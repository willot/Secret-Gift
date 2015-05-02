# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "ffaker"

users = 40.times.map do
	User.create!({
		name: Faker::Name.name,
		username: Faker::Internet.user_name,
		username: Faker::Internet.email,
		password: "password"
		})
end

list = 10.times.map do
	List.create!({
		name: Faker::Company.name,
		range_high: rand(50..100),
		range_low: rand(25..49),
		description: Faker::Lorem.paragraph,
		
		})