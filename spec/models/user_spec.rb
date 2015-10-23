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

  it 'validates the uniqueness of email address' do
    bob = FactoryGirl.build(:user)
    puts bob.valid?
    expect(bob.errors[:email]).to include "has already been taken"
  end

  it
end
