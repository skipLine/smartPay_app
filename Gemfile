source 'http://rubygems.org'

gem 'rails', '3.1.0'

gem 'gravatar_image_tag', '1.0.0.pre2'
gem 'will_paginate', '3.0.pre2'
gem 'sqlite3', '1.3.4', :group => :development
gem "amazon-ec2", :require => "AWS"
gem 'mail'
# Asset template engines
#gem 'sass-rails', "~> 3.1.0.rc"
#gem 'coffee-script'
#gem 'uglifier'

gem 'jquery-rails'

group :development do
  gem 'rspec-rails', '2.6.1'
  gem 'annotate', '2.4.0'
  gem 'faker', '0.3.1'
end

group :production do
  # gems specifically for Heroku go here
  gem "pg"
end

group :development, :test do
  gem 'sqlite3', '1.3.4'
end

group :assets do
  gem 'execjs'
  gem 'therubyracer', :platforms => :ruby
 # gem 'johnson'
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end


group :test do
  gem 'rspec-rails', '2.6.1'
  gem 'webrat', '0.7.1'
  gem 'spork', '0.9.0.rc5'
  gem 'factory_girl_rails', '1.0'
end