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
u4 = User.create :email => 'richmond.avenal@ri.com', :name => 'Richmond Avenal', :password => 'chicken'
u5 = User.create :email => 'douglas.reynholm@ri.com', :name => 'Douglas Reynholm', :password => 'chicken'

Post.destroy_all
p1 = Post.create :content => "Have you tried turning it off again?", :user_id => 1
p2 = Post.create :content => "Unbelievable! Some idiot disabled his firewall, meaning all the computers on floor Seven are teeming with viruses, plus I've just had to walk all the way down the motherfudging stairs, because the lifts are broken again!", :user_id => 2
p3 = Post.create :content => "“With all due respect John, I am the head of IT and I have it on good authority. If you type ‘Google’ into Google, you can break the Internet. So please, no one try it, even for a joke. It’s not a laughing matter. You can break the Internet.”", :user_id => 3
p4 = Post.create :content => "Where are you going? Is it to the top? If not, why not? Go to the bloody top! Is it because you're a goth? Did you know that goths have some of the lowest life satisfaction levels of any subculture with the exception of traffic wardens. That's why you don't see any goth traffic wardens. That would be a deadly combination. We at Goth2Boss work with goths in various locations around the UK to bring out their hidden potential by encouraging them to engage in everyday, healthy pursuits such as sport, mixing with other humans, extended laughter sessions and introducing colour to your wardrobe.", :user_id => 4
p5 = Post.create :content => "Space: what is it? The simple answer is, we don't know. Or at least we didn't know until now. Hello, I'm Douglas Reynholm, and I'm not a scientist, but I do have a better understanding of what space is than any scientist living today. Where did I gain these insights? From this man, the founder of Spaceology. Beth Gaga Shaggy — no relation to Lady Gaga or Shaggy — is the founder of Spaceology, a religion, not a cult. In other words, when it comes to space, he's the man with his head screwed on tight. This is what he told me when I met him on holiday two weeks ago.", :user_id => 5
