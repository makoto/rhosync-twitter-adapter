#
# Author: Makoto Inoue
#
# Example Twitter REST source adapter for Friend TimeLine
# Format is same as public timeline
# See more detail at http://apiwiki.twitter.com/REST+API+Documentation
require 'uri'
require 'xmlsimple'
require 'net/http'
require 'base_timeline'

  class Timeline < BaseTimeline
  
    def initialize(source, credential = nil)
      super
    end

    def query
      url = "/statuses/friends_timeline.xml"
      uri = URI.parse(@source.credential.url+url)

      # Login authentication. The logic is taken from basecamp_projects.rb
      req = Net::HTTP::Get.new(uri.path, 'Accept' => 'application/xml')
      req.basic_auth @source.credential.login, @source.credential.password

      res = Net::HTTP.start(uri.host,uri.port) do |http|
        http.request(req)
      end
      xml_data = XmlSimple.xml_in(res.body);
      @nested_result = xml_data["status"]
    end
    
    def create(name_value_list)
      url = "/statuses/update.xml"
      uri = URI.parse(@source.credential.url+url)
      
      get_params(name_value_list)
      
      req = Net::HTTP::Post.new(uri.path, 'Accept' => 'application/xml')
      req.basic_auth @source.credential.login, @source.credential.password
    
      req.set_form_data('status'=> params["text"])
    
      res = Net::HTTP.start(uri.host,uri.port) do |http|
        http.request(req)
      end
    end

  end
 
 
 
 
 
 
