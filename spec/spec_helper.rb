require 'ruby_bank'
require 'active_record'
require 'sqlite3'

File.delete('db/test.db') if FileTest.exists?('db/test.db')

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: File.expand_path('db/test.db')
)

ActiveRecord::Migrator.migrate 'db/migrations'