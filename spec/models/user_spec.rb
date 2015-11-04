require 'rails_helper'

let(:user) { FactoryGirl.build :user }

  it "can be instantiated with an email and password" do
    expect(user).to_not be_nil
  end

  it "'s email and password are accessible'" do
    expect(user.email).to_not be_nil
    expect(user.password).to_not be_nil
  end

end