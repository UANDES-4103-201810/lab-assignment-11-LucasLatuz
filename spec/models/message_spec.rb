require 'rails_helper'

RSpec.describe Message, type: :message do
  it "test new message creation with valid attributes to be valid" do
    @Message = create(:message)
    expect(@Message).to be_valid
  end

  it "test new message creation with nil user_id not to be valid" do
    @Message = create(:message, user_id: nil)
    expect(@Message).to_not be_valid
  end

  it "test new message creation with non existing user_id not to be valid" do
    @Message = create(:message, user_id: 291029102910)
    expect(@Message).to_not be_valid
  end
end