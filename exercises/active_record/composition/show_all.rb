require 'rubygems'
require 'active_record'
require_relative 'circle'
require_relative 'shape'
require_relative 'rectangle'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db.sqlite3')

puts Shape.all.to_yaml
puts Circle.all.to_yaml
puts Rectangle.all.to_yaml
