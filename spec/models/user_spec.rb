require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe User, :type => :model do
  let(:user) {User.new()}

  describe "validate presence" do
  	it {expect(user).to validate_presence_of(:name)}
  	it {expect(user).to validate_presence_of(:username)}
  	it {expect(user).to validate_presence_of(:email)}
  end	

  describe "validate uniqueness" do
  	it {expect(user).to validate_uniqueness_of(:email)}
  	it {expect(user).to validate_uniqueness_of(:username)}
  end	

  describe "validate lenght" do
  	it {expect(user).to ensure_length_of(:password).is_at_least(8)}
  end	
end
