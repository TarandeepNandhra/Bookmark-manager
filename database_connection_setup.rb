require './lib/db'

if ENV['ENVIRONMENT'] == 'test'
  DB.setup('bookmark_manager_test')
else
  DB.setup('bookmark_manager')
end