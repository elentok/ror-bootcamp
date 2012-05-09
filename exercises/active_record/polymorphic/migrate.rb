require_relative 'database'

ActiveRecord::Migrator.migrate('migrate')
#ActiveRecord::Migrator.rollback('migrate')
