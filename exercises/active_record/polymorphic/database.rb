require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db.sqlite3')

class Shape < ActiveRecord::Base
  belongs_to :has_shape, polymorphic: true
  # x, y
  validates_presence_of :x, :y

  # has_shape_id
  # has_shape_type
end

class Rectangle < ActiveRecord::Base
  has_one :shape, as: :has_shape
  # width, height
  validates_presence_of :width, :height
end

class Circle < ActiveRecord::Base
  has_one :shape, as: :has_shape
  # radius
  validates_presence_of :radius
end

require 'pry'
binding.pry
