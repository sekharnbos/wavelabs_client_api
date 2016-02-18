# WavelabsClientApi

Welcome to "wavelabs_client_api" gem. It is flexible wrapper to communicate with Wavelabs Server API. Using this library you can easily interact with Wavelabs Server API. This release supports User Registration Module:

    1. Sign Up
    2. Sign In
    3. Forgot Password
    4. Change Password
    5. Edit Profile
    6. Upload Profile Picture
    7. Social Sign Up(Login with facebook, github ..etc)

This library is used to send requests to Wavelabs Server API and get response. Following are the run time dependencies
    
    1. ruby-2.2.3
    2. activemodel-4.2.4
    3. httmultiparty-0.3.16 

There is an example rails application in github https://github.com/nbostech/wavelabs-rails-client-api. You can clone and use that application. 

Live example is available on heroku https://wavelabs-rails-client-api.herokuapp.com

This gem contains two main modules under /lib directory

 1. WaveLabsClientApi::Client::Api::Core which have the classes to handle server communication.

 2. WaveLabsClientApi::Client::Api::DataModels which have the ActiveModel classes to create model objects.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wavelabs_client_api', '0.1.6'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wavelabs_client_api

## Usage

 After installing the gem you can create your own controllers & use the Core module class methods to comminicate Wavelabs Server API. To use this wrapper first you need to add following environment(ENV) variables in your rails aplication:

    ### WaveLabs Server Details 
    ENV['API_HOST_URL']  = 'http://111.93.2.105:8080/starter-app-rest-grails'
    ENV['API_CLIENT_ID'] = 'my-client'
    ENV['API_CLIENT_SECRET'] = '$2a$10$R.b4bFfMN1a.fRptqpF.yelctUYOrVtqGnjSc4J8A1bhO03Qyz3Aa' 
    
    ### Social Login Details
    ENV['FACEBOOK_KEY'] = 'FACEBOOK APP KEY'
    ENV['FACEBOOK_SECRET'] = 'FACEBOOK APP SECRET'

    ENV['GOOGLE_KEY'] = 'GOOGLE APP KEY'
    ENV['GOOGLE_SECRET'] = 'GOOGLE APP SECRET'

    ENV['GITHUB_KEY'] = 'GITHUB APP KEY'
    ENV['GITHUB_SECRET'] = 'GITHUB APP SECRET'

    ENV['LINKEDIN_KEY'] = 'LINKEDIN APP KEY'
    ENV['LINKEDIN_SECRET'] = "LINKEDIN APP SECRET"

    ENV['INSTAGRAM_KEY'] = 'INSTAGRAM APP KEY'
    ENV['INSTAGRAM_SECRET'] = 'INSTAGRAM APP KEY'


  There are many ways to setup the ENV variables in rails. You can directly add them into your environment specific rb file, for example 'config/enviroments/development.rb' or you can use 'dot-env'/'figaro' gems.

  Note: You can use above Wavelabs Server details. It's public. And you need to create your own apps for social logins & modify social login details.

  Now you are ready to communicate with the Server. Following is an example to send a sign_up request from ruby console:

     $request = WavelabsClientApi::Client::Api::Core::UsersApi.new
     $sign_up_params = { :username  =>  "username",
                        :password  =>  "password123",
                        :email     =>  "username@test.com",
                        :firstName =>  "first name",
                        :lastName  =>  "last name"
                      }
     $response = request.sign_up(sign_up_params)

   You will get the approprivate response from server. If you want use this gem in your rails application use this link https://github.com/nbostech/wavelabs-rails-client-api
   
## To-Do

 1. Need to add test cases. 
 2. And continuous changes will be made based on Wavelabs Server API architecture. 
 3. There are other modules will come soon:
     
     a). Tenant Module
     b). Entity Authorization
     c). Payment Module

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/wavelabs_client_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

