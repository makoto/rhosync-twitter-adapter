#
# Author: Makoto Inoue
#
# Example Twitter REST source adapter for PublicTimeLine
#
# <?xml version="1.0" encoding="UTF-8"?>
# <rss version="2.0">
#     <channel>
#     <title>Twitter public timeline</title>
#     <link>http://twitter.com/public_timeline</link>
#     <description>Twitter updates from everyone!</description>
#     <language>en-us</language>
#     <ttl>40</ttl>
#     <item>
#       <title>cbcsask: RCMP desk-jockeys in Saskatchewan do a turn on beats http://tinyurl.com/cg8vdk</title>
#       <description>cbcsask: RCMP desk-jockeys in Saskatchewan do a turn on beats http://tinyurl.com/cg8vdk</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:06 +0000</pubDate>
#       <guid>http://twitter.com/cbcsask/statuses/1160147370</guid>
#       <link>http://twitter.com/cbcsask/statuses/1160147370</link>
#     </item><item>
#       <title>teiten: Shotted: xxx http://teiten.org/xxx</title>
#       <description>teiten: Shotted: xxx http://teiten.org/xxx</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:06 +0000</pubDate>
#       <guid>http://twitter.com/teiten/statuses/1160147368</guid>
#       <link>http://twitter.com/teiten/statuses/1160147368</link>
#     </item><item>
#       <title>WearableByDesig: Yay!  Come over to our trunk show in the Etsy Virtual Labs!!</title>
#       <description>WearableByDesig: Yay!  Come over to our trunk show in the Etsy Virtual Labs!!</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:06 +0000</pubDate>
#       <guid>http://twitter.com/WearableByDesig/statuses/1160147367</guid>
#       <link>http://twitter.com/WearableByDesig/statuses/1160147367</link>
#     </item><item>
#       <title>RichCartlidge: Joke Today: What is a jury?</title>
#       <description>RichCartlidge: Joke Today: What is a jury?</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:06 +0000</pubDate>
#       <guid>http://twitter.com/RichCartlidge/statuses/1160147365</guid>
#       <link>http://twitter.com/RichCartlidge/statuses/1160147365</link>
#     </item><item>
#       <title>angav: joer! no es buena idea googlelearse</title>
#       <description>angav: joer! no es buena idea googlelearse</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:06 +0000</pubDate>
#       <guid>http://twitter.com/angav/statuses/1160147363</guid>
#       <link>http://twitter.com/angav/statuses/1160147363</link>
#     </item><item>
#       <title>gillyh: good nightx</title>
#       <description>gillyh: good nightx</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:06 +0000</pubDate>
#       <guid>http://twitter.com/gillyh/statuses/1160147362</guid>
#       <link>http://twitter.com/gillyh/statuses/1160147362</link>
#     </item><item>
#       <title>gazsherman: @Squishtof I know! All hell could have broke loose!</title>
#       <description>gazsherman: @Squishtof I know! All hell could have broke loose!</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:06 +0000</pubDate>
#       <guid>http://twitter.com/gazsherman/statuses/1160147359</guid>
#       <link>http://twitter.com/gazsherman/statuses/1160147359</link>
#     </item><item>
#       <title>thepassivedad: Getting ready for preschool open house for my daughter.  Looking for cheap and quick dinner options.</title>
#       <description>thepassivedad: Getting ready for preschool open house for my daughter.  Looking for cheap and quick dinner options.</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:06 +0000</pubDate>
#       <guid>http://twitter.com/thepassivedad/statuses/1160147357</guid>
#       <link>http://twitter.com/thepassivedad/statuses/1160147357</link>
#     </item><item>
#       <title>kathleenKABOOSE: HAHAHAHAHAHAH. OMFG, ANGRY BEAVERS. haaaaaaaaaaaaaaaaaaaaaaa.</title>
#       <description>kathleenKABOOSE: HAHAHAHAHAHAH. OMFG, ANGRY BEAVERS. haaaaaaaaaaaaaaaaaaaaaaa.</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:08 +0000</pubDate>
#       <guid>http://twitter.com/kathleenKABOOSE/statuses/1160147355</guid>
#       <link>http://twitter.com/kathleenKABOOSE/statuses/1160147355</link>
#     </item><item>
#       <title>chekeichan: RAAAAAA I hate the use of BP instead of BC/AD. RAAAAA</title>
#       <description>chekeichan: RAAAAAA I hate the use of BP instead of BC/AD. RAAAAA</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:06 +0000</pubDate>
#       <guid>http://twitter.com/chekeichan/statuses/1160147354</guid>
#       <link>http://twitter.com/chekeichan/statuses/1160147354</link>
#     </item><item>
#       <title>AdamShafto: Hitler reacts to the Killzone 2 reviews.
# http://tinyurl.com/azk42e</title>
#       <description>AdamShafto: Hitler reacts to the Killzone 2 reviews.
# http://tinyurl.com/azk42e</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:06 +0000</pubDate>
#       <guid>http://twitter.com/AdamShafto/statuses/1160147352</guid>
#       <link>http://twitter.com/AdamShafto/statuses/1160147352</link>
#     </item><item>
#       <title>topshelftotes: @quirke That really does suck... sorry!!</title>
#       <description>topshelftotes: @quirke That really does suck... sorry!!</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:06 +0000</pubDate>
#       <guid>http://twitter.com/topshelftotes/statuses/1160147351</guid>
#       <link>http://twitter.com/topshelftotes/statuses/1160147351</link>
#     </item><item>
#       <title>sfaulstich: @mattbacak I love QS&amp;L! Is the original the one in Sharon? (it has those trucks on the roof &amp; cars hanging from the ceiling?)</title>
#       <description>sfaulstich: @mattbacak I love QS&amp;L! Is the original the one in Sharon? (it has those trucks on the roof &amp; cars hanging from the ceiling?)</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:05 +0000</pubDate>
#       <guid>http://twitter.com/sfaulstich/statuses/1160147350</guid>
#       <link>http://twitter.com/sfaulstich/statuses/1160147350</link>
#     </item><item>
#       <title>sairalyn: just snowboarded down the scariest, steepest, avalanche prone glade she's ever ridden... and survived.</title>
#       <description>sairalyn: just snowboarded down the scariest, steepest, avalanche prone glade she's ever ridden... and survived.</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:05 +0000</pubDate>
#       <guid>http://twitter.com/sairalyn/statuses/1160147349</guid>
#       <link>http://twitter.com/sairalyn/statuses/1160147349</link>
#     </item><item>
#       <title>susandeane: How I hate films on commercial TV, adverts are a downright inconvenience!  Ah well - cup of tea!</title>
#       <description>susandeane: How I hate films on commercial TV, adverts are a downright inconvenience!  Ah well - cup of tea!</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:05 +0000</pubDate>
#       <guid>http://twitter.com/susandeane/statuses/1160147348</guid>
#       <link>http://twitter.com/susandeane/statuses/1160147348</link>
#     </item><item>
#       <title>nlflux: @ciscoit I think we all remembered the lawsuit more then the Cisco &quot;Iphone&quot;</title>
#       <description>nlflux: @ciscoit I think we all remembered the lawsuit more then the Cisco &quot;Iphone&quot;</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:07 +0000</pubDate>
#       <guid>http://twitter.com/nlflux/statuses/1160147347</guid>
#       <link>http://twitter.com/nlflux/statuses/1160147347</link>
#     </item><item>
#       <title>AmbrissRembulat: Excited to see my family this weekend. I need some good quality time with them.</title>
#       <description>AmbrissRembulat: Excited to see my family this weekend. I need some good quality time with them.</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:05 +0000</pubDate>
#       <guid>http://twitter.com/AmbrissRembulat/statuses/1160147346</guid>
#       <link>http://twitter.com/AmbrissRembulat/statuses/1160147346</link>
#     </item><item>
#       <title>purplegenie: is pleased to have taught her last class of the week.  Woohoo!</title>
#       <description>purplegenie: is pleased to have taught her last class of the week.  Woohoo!</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:05 +0000</pubDate>
#       <guid>http://twitter.com/purplegenie/statuses/1160147344</guid>
#       <link>http://twitter.com/purplegenie/statuses/1160147344</link>
#     </item><item>
#       <title>nevali: @thecuriosity sound and vision? at auntie? that's a bit newfangled, isn't it?</title>
#       <description>nevali: @thecuriosity sound and vision? at auntie? that's a bit newfangled, isn't it?</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:05 +0000</pubDate>
#       <guid>http://twitter.com/nevali/statuses/1160147342</guid>
#       <link>http://twitter.com/nevali/statuses/1160147342</link>
#     </item><item>
#       <title>Rolcol: My dad gives me instructions for computer things like I don't know anything.</title>
#       <description>Rolcol: My dad gives me instructions for computer things like I don't know anything.</description>
#       <pubDate>Thu, 29 Jan 2009 23:56:05 +0000</pubDate>
#       <guid>http://twitter.com/Rolcol/statuses/1160147341</guid>
#       <link>http://twitter.com/Rolcol/statuses/1160147341</link>
#     </item>
#     </channel>
#     </rss>

module Twitter
  class PublicTimeline < SourceAdapter
  
    include RestAPIHelpers
  
    def initialize(source)
      super
    end

    def query
      log "Twitter query"
      log @source.url.inspect
    
      url = URI.parse('http://twitter.com')
      res = Net::HTTP.start(url.host, url.port) {|http|
        http.get("/statuses/public_timeline.rss")
      }
      # @result = res.body    
      xml_data = XmlSimple.xml_in(res.body); 
      @result = xml_data["channel"].first["item"]
    end

    def sync
      log "PublicTimeline sync, with #{@result.length} results"
      @result.each do |item|
        id = File.basename(item["guid"][0])
      
        # iterate over all possible values, if the value is not found we just pass "" in to rhosync
        item.keys.each do |key|
          value = item[key] ? item[key][0] : ""
          add_triple(@source.id, id, key.gsub('-','_'), value)
          # convert "-" to "_" because "-" is not valid in ruby variable names   
        end
      end
    end
  
    # not planning to create, update or delete projects on device
  end
end