require('circleci')
require_relative('config_values.rb')

# load config file
CircleCi.configure do |config|
  config.token = ENV['CIRCLE_API_TOKEN'] || MyConfig.get('circle_api_token')
end
