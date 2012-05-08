require_relative 'database.rb'

Client.create name: 'bob', phone: 123, address: 456

Client.all.each do |c|
  puts c.name
end
