require('circleci')
CircleCi.configure do |config|
  config.token = ENV['API_TOKEN']
end
