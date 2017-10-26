require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should extract out domain from email' do
    user = User.new(email: 'sue@spacex.com', password: 'password')
  expect(user.domain).to eq('spacex.com')
  end
  end
