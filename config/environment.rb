require 'bundler'
require 'pry'
require "faker"
require "colorize"

Bundler.require
require_all 'app'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'
ActiveRecord::Base.logger = nil
