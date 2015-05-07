require 'rails_helper'

# RSpec.describe "UsersSignups", :type => :request do
#   # describe "GET /users_signups" do
#   #   it "works! (now write some real specs)" do
#   #     get users_signups_path
#   #     expect(response).to have_http_status(200)
#   #   end
#   # end

#   describe "GET 'index'" do
#     it "should be successful" do
#     	user = FactoryGirl.create(:user)
#     	login(user)
#     	get :/
#     	response.should be_success
#     end
#   end

#    describe "invalid signup information" do
#    	get signup_path
#    	assert_no_difference 'User.count'
#    	user: { name:  "test",
#     			username: ""
#                 email: "user@invalid",
#                 password: "foo",
#                 password_confirmation: "bar" }
#     it "shouldn't be successful" do
#     	post users_path
#     	assert_template 'users/new'
#     end
#   end
# end
