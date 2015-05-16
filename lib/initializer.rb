require('circleci')

# load config file
CircleCi.configure do |config|
  config.token = ENV['API_TOKEN']
end
