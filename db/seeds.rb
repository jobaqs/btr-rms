# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ position: 'Chicago' }, { position: 'Copenhagen' }])
#   Mayor.create(position: 'Emanuel', city: cities.first)

puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :position => 'Receiving Clerk', :email => 'receiving_clerk@rms.com', :password => 'cdasia', :password_confirmation => 'cdasia', :division_id => 1
puts 'New user created: ' << user.position << " (#{user.email})"
user2 = User.create! :position => 'Division Chief', :email => 'division_chief@rms.com', :password => 'cdasia', :password_confirmation => 'cdasia', :division_id => 1
puts 'New user created: ' << user2.position << " (#{user2.email})"
user3 = User.create! :position => 'Lawyer', :email => 'lawyer@rms.com', :password => 'cdasia', :password_confirmation => 'cdasia', :division_id => 1
puts 'New user created: ' << user3.position << " (#{user3.email})"
user4 = User.create! :position => 'Investigator', :email => 'investigator@rms.com', :password => 'cdasia', :password_confirmation => 'cdasia', :division_id => 1
puts 'New user created: ' << user4.position << " (#{user4.email})"
user.add_role :receiving_clerk
user2.add_role :division_chief
user3.add_role :lawyer
user4.add_role :investigator
