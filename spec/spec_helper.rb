require 'bundler/setup'
Bundler.setup

require 'active_model'
require 'wavelabs_client_api' 
require 'byebug'

require 'support/user_sign_up.rb'

# and any other gems you need

### WaveLabs Server Details 
ENV['API_HOST_URL']  = 'http://localhost:8080/starter-app-rest-grails'
ENV['API_CLIENT_ID'] = 'my-client'
ENV['API_CLIENT_SECRET'] = '$2a$10$R.b4bFfMN1a.fRptqpF.yelctUYOrVtqGnjSc4J8A1bhO03Qyz3Aa' 

RSpec.configure do |config|
  # some (optional) config here
end