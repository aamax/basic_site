# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user2 = User.create! :name => 'Allen Maxwell', :email => 'aamax@xmission.com', :password => ENV['GMAIL_PASSWORD'], :password_confirmation => ENV['GMAIL_PASSWORD']
puts 'New user created: ' << user2.name
user2.add_role :admin
user2 = User.create! :name => 'Cindy Bonamarte', :email => 'genevaequestrian@msn.com', :password => 'password', :password_confirmation => 'password'
puts 'New user created: ' << user2.name
user2.add_role :admin
