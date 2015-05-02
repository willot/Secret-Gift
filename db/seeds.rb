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
		name: FFaker::Name.name,
		username: FFaker::Internet.user_name,
		username: FFaker::Internet.email,
		password_digest: "password"
		})
end

lists = 10.times.map do
	List.create!({
		name: FFaker::Company.name,
		range_high: rand(50..100),
		range_low: rand(25..49),
		description: FFaker::Lorem.paragraph,
		date: FFaker::Time.date,
		period: FFaker::Lorem.word,
		admin: users.sample.id
		})
end	

wishes = 80.times.map do
	Wish.create!({
		name: FFaker::Team.name,
		description: FFaker::Lorem.paragraph,
		price: FFaker::Number.between(from = 35, to = 125),
		user_id: users.sample.id
		})
end	

urls = 100.times.map do
	Url.create!({
		url: FFaker::Internet.url,
		wish_id: wishes.sample.id
		})
end

50.times.map do
	User_list.create!({
		user_id: users.sample.id,
		list_id: lists.sample.id
		})
end	

