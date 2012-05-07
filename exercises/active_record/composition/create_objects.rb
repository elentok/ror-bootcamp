require 'rubygems'
require 'active_record'
require_relative 'circle'
require_relative 'shape'
require_relative 'rectangle'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db.sqlite3')
  
shape = Shape.new x: 10, y: 20, color: 'green'

circle = Circle.new shape: shape, radius: 20
circle.save!

rectangle = Rectangle.new shape: shape, width: 50, height: 100
rectangle.save!
