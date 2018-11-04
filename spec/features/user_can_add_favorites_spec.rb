require 'rails_helper'

describe 'visiting /news' do
  context 'as a user' do
    it 'can add articles as favorites' do
      stub_google_auth
      visit '/'
      click_on "Login"

      expect(User.first.favorites.count).to eq(0)
      first('.article').click_on('Add to Favorites')
      expect(User.first.favorites.count).to eq(1)
    end
  end
end
