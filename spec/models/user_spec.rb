require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:email) }

  before do
    @ian = FactoryGirl.create(:user)
  end

  it "creates a user" do
    expect(User.first).to eq(@ian)
  end

  it "validates the uniqueness of email address" do
    bob = FactoryGirl.build(:user)
    expect(bob.errors[:email]).to include "has already been taken"
  end

  it "creats a password digest based on the password that can be used for authentication" do
    password = "password"
    subject = FactoryGirl.create(:user, password: password, email: "123@gmail.com")
    expect(subject.authenticate(password)).to eq subject
  end
end
