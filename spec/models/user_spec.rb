require 'rails_helper'

RSpec.describe User, type: :user do
  it "test new user creation with valid attributes to be valid" do
    @User = create(:user)
    expect(@user).to be_valid
  end

  it "test new user creation with not unique username not to be valid." do
    @User = create(:user, email: "pajaros@delnido.cl")
    @User2 = build(:user)
    expect(@user).to_not be_valid
  end

  it "test new user creation with not unique email not to be valid" do
    @User = create(:user, username: "cuervos")
    @User2 = build(:user)
    expect(@user).to_not be_valid
  end

  it "– test new user creation with longer than 20 characters username not to be valid" do
    @User = create(:user, username:"123456789123456789123456789")
    expect(@user).to_not be_valid
  end
end