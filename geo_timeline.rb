require 'json'
class GeoTimeline < SourceAdapter
  
  include RestAPIHelpers
  
  
  def initialize(source, credential = nil)
    super(source)
  end

  def login
    #TODO: Write some code here
    # use the variable @source.login and @source.password
    # raise "Please provide some code to perform an authenticated login to the backend application"
  end
  
  def ask(question)
    latitude, longitude = question.split(',')
    range = "25km"
    url = "/search.json?geocode=#{latitude}%2C#{longitude}%2C#{range}"
  
    p "url"
    p url



    # http://search.twitter.com/search.atom?geocode=-1067548169.0%2C-1067548169.0%2C25km
    res = Net::HTTP.get('search.twitter.com', url)
  
    json_data = JSON.parse(res)
    data =  json_data["results"]
    p "data class #{data.class}"
    
    @data = []
    header_id = "header_#{question}"
    data_id = "data_#{question}"    
    data.each do |item|
      item_id = item["id"]
      iterate_keys(:item => item, :item_id => item_id)
    end
    # # return array of objects that correspond
    # result = [ 
    #   ObjectValue.new(:source_id=>@source.id, :object => header_id, 
    #                   :attrib => "section", :value => "header"),
    #                   
    #   ObjectValue.new(:source_id=>@source.id, :object => header_id, 
    #                   :attrib => "created_at", :value => DateTime.now.to_s),
    #                 
    #   ObjectValue.new(:source_id=>@source.id, :object => header_id, 
    #                   :attrib => "question", :value => question),
    #                   
    #   ObjectValue.new(:source_id=>@source.id, :object => header_id, 
    #                   :attrib => "data_id", :value => data_id),
    #                               
    #   #########
    #   
    #   ObjectValue.new(:source_id=>@source.id, :object => data_id, 
    #                   :attrib => "section", :value => "data"),
    #                   
    #   ObjectValue.new(:source_id=>@source.id, :object => data_id, 
    #                   :attrib => "data_length", :value => data.length.to_s),
    #                   
    #   ObjectValue.new(:source_id=>@source.id, :object => data_id, 
    #                   :attrib => "data", :value => data),
    # 
    # ]
    # p result
    @data
  end
  

  def query
    # # http://search.twitter.com/search.atom?geocode=40.757929%2C-73.985506%2C25km
    # p "options"
    # p options
    # url = "/statuses/friends_timeline.xml"
    # uri = URI.parse(@source.url+url)
    # 
    # # Login authentication. The logic is taken from basecamp_projects.rb
    # req = Net::HTTP::Get.new(uri.path, 'Accept' => 'application/xml')
    # req.basic_auth @source.login, @source.password
    # 
    # res = Net::HTTP.start(uri.host,uri.port) do |http|
    #   http.request(req)
    # end
    # 
    # xml_data = XmlSimple.xml_in(res.body); 
    # @result = xml_data["status"]
  end

  def sync
    # log "#{self.class} sync, with #{@result.length} results"
    # @result.each do |item|
    #   item_id = item["id"].first.to_i
    #   iterate_keys(:item => item, :item_id => item_id)
    # end
  end

  def create(name_value_list)
    #TODO: write some code here
    # the backend application will provide the object hash key and corresponding value
    raise "Please provide some code to create a single object in the backend application using the hash values in name_value_list"
  end

  def update(name_value_list)
    #TODO: write some code here
    # be sure to have a hash key and value for "object"
    raise "Please provide some code to update a single object in the backend application using the hash values in name_value_list"
  end

  def delete(name_value_list)
    #TODO: write some code here if applicable
    # be sure to have a hash key and value for "object"
    # for now, we'll say that its OK to not have a delete operation
    # raise "Please provide some code to delete a single object in the backend application using the hash values in name_value_list"
  end

  def logoff
    #TODO: write some code here if applicable
    # no need to do a raise here
  end
private
  def iterate_keys(option)
    item = option[:item]
    item_id = option[:item_id]
    prefix = option[:prefix] || ""
    # require 'ruby-debug'
    # debugger
    # item.keys => [\"user\", \"favorited\", \"truncated\"...]
    item.keys.each do |key|
      value = item[key] ? item[key] : ""
      if value.kind_of?(Hash) && value != {}
        # eg. :user => {:url => 'foo} becomes user_url
        iterate_keys(:prefix => (prefix + underline(key) + "_"), :item => value, :item_id => item_id)
      else
        # p "current_user1 :::: #{current_user}"
        # p "current_user2 :::: #{@source.current_user.inspect}"
        # This method is from rest_api_helper
        add_triple2(@source.id, item_id, prefix + underline(key), value, 3)
      end
    end
  end

  def add_triple2(source_id, object_id, attrib, value, user_id)
    o = ObjectValue.new
    o.source_id=source_id
    o.object=object_id
    o.attrib=attrib
    o.value = value
    # o.va lue = eval_value(value)
    o.user_id = user_id
    
    @data << o
  end

  def underline(key)
    key.gsub('-','_')
  end

end

