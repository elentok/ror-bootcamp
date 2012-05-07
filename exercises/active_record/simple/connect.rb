require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db.sqlite3')


class Client < ActiveRecord::Base
end

Client.create name: 'bob', phone: 123, address: 456

Client.all.each do |c|
  puts c.name
end
