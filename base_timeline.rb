  class BaseTimeline < SourceAdapter
  
  def sync
    query
    @result = []
    @nested_result.each_with_index do |item, key|
      item_id = item["id"].first.to_i
      iterate_keys(:item => item, :item_id => item_id, :row_num => key)
    end
    # log "#{self.class} sync, with #{@result.length} results"
    super
  end
      
  private
    def iterate_keys(option)
      item = option[:item]
      item_id = option[:item_id]
      prefix = option[:prefix] || ""
      row_num = option[:row_num].to_i
      # raise row_num.class.inspect.
      
      @result[row_num] ||= {}
      # item.keys => ["user", "favorited", "truncated"...]
      item.keys.each do |key|
        # value = item[key] ? item[key] : ""
        value = item[key] ? item[key][0] : ""
        if value.kind_of?(Hash) && value != {}
          # eg. :user => {:url => 'foo} becomes user_url
          iterate_keys(:prefix => (prefix + underline(key) + "_"), :item => value, :item_id => item_id, :key => key)
        else
          # raise item[key][0].inspect
          # This method is from rest_api_helper
          @result[row_num][prefix + underline(key)] = value
          # add_triple(@source.id, item_id, prefix + underline(key), value,  @source.current_user.id)
        end
      end
    end

    def underline(key)
      key.gsub('-','_')
    end
  end
# end
