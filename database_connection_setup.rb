require './lib/db'

if ENV['RACK_ENV'] == 'test'
  DB.setup('bookmark_manager_test')
else
  DB.setup('bookmark_manager')
end