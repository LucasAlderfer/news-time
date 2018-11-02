require 'rails_helper'

describe User, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
  end

  context 'relationships' do
    it { should have_many(:favorites) }
  end
end
