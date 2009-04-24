require 'rubygems'
require 'httpclient'

#
# Author: Makoto Inoue
#
# Example Twitter REST source adapter for Friend TimeLine
# Format is same as public timeline
# See more detail at http://apiwiki.twitter.com/REST+API+Documentation

# module Twitter
  class PicTimeLine < SourceAdapter
  
    include RestAPIHelpers
  
    def initialize(source, credential = nil)
      super
    end

    # Looks not in use
    # def login
    #   
    # end

    def query
      url = "/statuses/friends_timeline.xml"
      uri = URI.parse(@source.url+url)

      # Login authentication. The logic is taken from basecamp_projects.rb
      req = Net::HTTP::Get.new(uri.path, 'Accept' => 'application/xml')
      req.basic_auth @source.login, @source.password

      res = Net::HTTP.start(uri.host,uri.port) do |http|
        http.request(req)
      end
      xml_data = XmlSimple.xml_in(res.body); 
      @result = xml_data["status"]
    end

    def sync
      query
      
      # log "#{self.class} sync, with #{@result.length} results"
      @result.each do |item|
        item_id = item["id"].first.to_i
        iterate_keys(:item => item, :item_id => item_id)
      end
    end
    
    def create(name_value_list, blob=nil)
      p "Creating pic timeline..."
      p "name_value_list: #{name_value_list.inspect}"
      p "blob: #{blob.inspect}"
      # http://twitpic.com/api.do
      # - media (required) - Binary image data
      # - username (required) - Twitter username
      # - password (required) - Twitter password
      # - message (optional) - Message to post to twitter. The URL of the image is automatically added.
      uri = URI.parse("http://twitpic.com/api/uploadAndPost")
      get_params(name_value_list)

      boundary = "123456"
      c = HTTPClient.new
      open(blob.to_file) do |file|
        postdata = { 'message'=> params['text'], 'username' => @source.login, 'password' => @source.password, 'media' => file }
        puts c.post_content(uri.to_s, postdata)
      end
    end
      
  private
    def iterate_keys(option)
      item = option[:item]
      item_id = option[:item_id]
      prefix = option[:prefix] || ""

      # item.keys => [\"user\", \"favorited\", \"truncated\"...]
      item.keys.each do |key|
        value = item[key] ? item[key][0] : ""
        if value.kind_of?(Hash) && value != {}
          # eg. :user => {:url => 'foo} becomes user_url
          iterate_keys(:prefix => (prefix + underline(key) + "_"), :item => value, :item_id => item_id)
        else
          # This method is from rest_api_helper
          add_triple(@source.id, item_id, prefix + underline(key), value, @source.current_user.id)
        end
      end
    end

    def underline(key)
      key.gsub('-','_')
    end
  end
# end