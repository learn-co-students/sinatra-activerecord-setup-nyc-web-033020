ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])


# sets up a connection to a sqlite3 database named "database.db"
# located in a folder called "db." Can rename here
configure :development do
  set :database, 'sqlite3:db/database.db' #<-- can rename database
end

require './app'