# Omniauth AffinityLive

[Omniauth AffinityLive](https://github.com/rikkipitt/omniauth-affinitylive) is an [OmniAuth](https://github.com/intridea/omniauth) authentication strategy for [AffinityLive](http://www.affinitylive.com).

## Installation

Add this to your application's Gemfile:

```ruby
gem 'omniauth'
gem 'omniauth-affinitylive'
```

And then execute:

```bash
bundle
```

Or install it yourself as:

```bash
gem install omniauth-affinitylive
```

## Usage

Create an AffinityLive application as an administrator user. YOUR_DEPLOYMENT = the subdomain you use to login with on AffinityLive.

For a Rack application:

```ruby
use OmniAuth::Builder do
  provider :affinitylive, CLIENT_ID, CLIENT_SECRET, :client_options => {:site => "https://YOUR_DEPLOYMENT.api.affinitylive.com"}
end
```

For a Rails application:

```ruby
# config/intializers/omniauth.rb
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :affinitylive, CLIENT_ID, CLIENT_SECRET, :client_options => {:site => "https://YOUR_DEPLOYMENT.api.affinitylive.com"}
end
```

Or, if you use [devise](https://github.com/plataformatec/devise) for authentication:

```ruby
# config/initializers/devise.rb
Devise.setup do |config|
  config.omniauth :affinitylive, CLIENT_ID, CLIENT_SECRET, :client_options => {:site => "https://YOUR_DEPLOYMENT.api.affinitylive.com"}
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright

Copyright (c) 2015 Rikki Pitt. See [LICENSE.txt](LICENSE.txt) for details.
