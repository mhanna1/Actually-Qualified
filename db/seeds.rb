# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
          

User.create!(name: 'Mark Hanna',
             email: 'mhanna500admin@gmail.com',
             password: '123456',
             password_confirmation: '123456',
             admin: true,
             activated: true,
             activated_at: Time.now.utc.to_s(:db) )

User.create!(name: 'Example User',
             email: 'example@railstutorial.org',
             password: 'foobar',
             password_confirmation: 'foobar',
             activated: true,
             activated_at: Time.now.utc.to_s(:db) )

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = 'password'
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.now.utc.to_s(:db) )
end


