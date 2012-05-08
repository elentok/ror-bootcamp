require_relative 'database.rb'

ActiveRecord::Migrator.migrate('migrate')
