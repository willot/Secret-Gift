require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe User, :type => :model do
  let(:user) {User.new()}

  describe "validate presence" do
  	it {expect(user).to validate_presence_of(:name)}
  	it {expect(user).to validate_presence_of(:username)}
  	it {expect(user).to validate_presence_of(:email)}
  end	
end
