require 'rails_helper'

RSpec.describe User, :type => :model do
  context 'it checks to see if the user' do
    it 'is valid with valid attributes' do
      expect(User.new(id: 1, email: 'test@test.com',
                      password: '123456', created_at: Time.now, updated_at: Time.now, name: 'Test')).to be_valid
    end
    it 'is not valid with invalid attributes' do
      expect(User.new(name: nil, email: nil)).to_not be_valid
    end
  end
  it 'should have many events' do
    e = User.reflect_on_association(:events)
    expect(e.macro).to eq(:has_many)
  end
end

RSpec.describe Event, :type => :model do
  context 'it checks to see if the event' do
    it 'is valid with valid attributes' do
      User.new(id: 1, email: 'test@test.com', password: '123456',
       created_at: Time.now, updated_at: Time.now, name: 'Test')
      expect(Event.new(id: 1, title: 'Test', body: 'Body of the test',
                       datetime: 2021 - 02 - 02, created_at: Time.now, updated_at: Time.now, user_id: nil)).to be_valid
    end
    it 'is not valid with invalid attributes' do
      expect(Event.new(title: nil, body: nil)).to_not be_valid
    end
  end
end
