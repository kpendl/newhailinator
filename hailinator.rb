require "twitter"

Twitter.configure do |config|
  config.consumer_key = "h9DxTNfFqUviJViMkcQz3A"
  config.consumer_secret = "diQfTaOJUjRYmuRH6MI43JJKT3ajLQTLxVOtxgrCw"
  config.oauth_token = "757421383-4rZLNvcuNDUue2JGePHkH1iJVkk54gxAfZPa3WVE"
  config.oauth_token_secret = "ERyIcEPG3Phl0iDWHMnfmFcDBpSbNtv7pY72oHQ"
end

Twitter.search("Hail")
# Twitter.friends
Twitter.search("Hail").inspect do |tweet|
puts "#{tweet}" 
end 