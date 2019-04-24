# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
u1 = User.create :email => 'roy.trenneman@ri.com', :name => 'Roy Trenneman' , :password => 'chicken'
u2 = User.create :email => 'maurice.moss@ri.com', :name => 'Maurice Moss', :password => 'chicken'
u3 = User.create :email => 'jenbarber@ri.com', :name => 'Jen Barber', :password => 'chicken'
u3 = User.create :email => 'richmond.avenal@ri.com', :name => 'Richmond Avenal', :password => 'chicken'
u3 = User.create :email => 'douglas.reynholm@ri.com', :name => 'Douglas Reynholm', :password => 'chicken'

Post.destroy_all
