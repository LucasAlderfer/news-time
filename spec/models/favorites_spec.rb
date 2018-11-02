require 'rails_helper'

describe Favorite, type: :model do
  context 'validations' do
    it { should validate_presence_of(:author) }
    it { should validate_presence_of(:source_id) }
    it { should validate_presence_of(:source_name) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:url) }
    it { should validate_presence_of(:urltoimage) }
    it { should validate_presence_of(:published_at) }
  end

  context 'relationshps' do
    it { should belong_to(:user) }
  end
end
