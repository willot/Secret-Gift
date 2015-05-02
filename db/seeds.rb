# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


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
		user_id: users.sample.id
		})
end	

wishes = 80.times.map do
	Wish.create!({
		name: FFaker::Conference.name,
		description: FFaker::Lorem.paragraph,
		price: rand(25..100),
		user_id: users.sample.id
		})
end	

urls = 100.times.map do
	Url.create!({
		url: Faker::Internet.url,
		wish_id: wishes.sample.id
		})
end

50.times.map do
	UserList.create!({
		user_id: users.sample.id,
		list_id: lists.sample.id
		})
end	

