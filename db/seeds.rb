# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#creating user1
user = User.create(:email => 'test@sample.com', :password => 'password', :password_confirmation => 'password' )
user.save

#creating account 1
user.accounts.create(:name => 'Bussiness', :account_type => 'Current', :balance => 2200)
#creating account 2
user.accounts.create(:name => 'Personal', :account_type => 'Savings', :balance => 100)



#creating user2
user = User.create(:email => 'test1@sample.com', :password => 'password', :password_confirmation => 'password' )
user.save

#creating account 3
user.accounts.create(:name => 'Investment', :account_type => 'Savings', :balance => 2200)
#creating account 4
user.accounts.create(:name => 'Kids', :account_type => 'Savings', :balance => 100)




