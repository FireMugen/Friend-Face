# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
u1 = User.create :email => 'esther@squishy.com', :name => 'Esther Greatbanks' , :password => 'chicken'
u2 = User.create :email => 'max@squishy.com', :name => 'Max Reeves', :password => 'chicken'

Post.destroy_all
p1 = Post.create :content => "Hi!", :user_id => 1
p2 = Post.create :content => "Hi!", :user_id => 2
