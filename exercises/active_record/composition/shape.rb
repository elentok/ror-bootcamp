class Shape < ActiveRecord::Base
  has_one :rectangle
  has_one :circle
end
