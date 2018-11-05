require 'rails_helper'

describe 'visiting /favorites' do
  context 'as a user' do
    it 'can see favorite articles' do
      stub_google_auth
      visit '/'
      click_on "Login"

      first('.article').click_on('Add to Favorites')

      click_on "My Favorites"

      expect(current_path).to eq("/favorites")
      favorite = User.first.favorites.first
      expect(page).to have_content("#{favorite.title}")
      expect(page).to have_content("#{favorite.source_name}")
    end
  end
end
