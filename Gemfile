source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'get_back'
gem 'activerecord-jdbcsqlite3-adapter'
gem 'rspec', '2.8.0'
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '2.0.1'
gem 'json', '1.6.6'

# START:therubyracer
#platform :ruby do
#  gem 'therubyracer', '0.9.10'
#end
# END:therubyracer

platform :jruby do
  gem 'therubyrhino'
end

group :test do
  gem 'rspec-rails'
#  gem 'torquebox-no-op', '2.0.2'
end

# START:db_driver
#group :production do
#  # START:pg
##  gem 'pg', '0.13.2'
# # END:pg
#end

#group :development, :test do
#  # START:sqlite
#  gem 'sqlite3', '1.3.5'
#  # END:sqlite
#end
# END:db_driver

group :production do
  gem 'jdbc-postgres'
end

group :development, :test do
  gem 'jdbc-sqlite3'
end

group :development, :production do
	gem "torquebox", "3.1.1"
	gem 'torquebox-rake-support'
end

gem 'torquebox-remote-deployer', '0.1.1'