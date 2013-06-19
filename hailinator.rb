require "twitter"
require "CSV"

Twitter.configure do |config|
  config.consumer_key = "h9DxTNfFqUviJViMkcQz3A"
  config.consumer_secret = "diQfTaOJUjRYmuRH6MI43JJKT3ajLQTLxVOtxgrCw"
  config.oauth_token = "757421383-4rZLNvcuNDUue2JGePHkH1iJVkk54gxAfZPa3WVE"
  config.oauth_token_secret = "ERyIcEPG3Phl0iDWHMnfmFcDBpSbNtv7pY72oHQ"
end
CSV.open("newhailinator.csv", "wb") do |csv|
	csv << ["handle", "text", "url"]
	Twitter.search("#hail").results.map do |status|
		csv << [status.user.handle, status.text, status.user.url]
		
	end
end


# https://github.com/kpendl/newhailinator.git
	