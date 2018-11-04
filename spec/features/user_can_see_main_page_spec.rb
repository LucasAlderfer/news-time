require 'rails_helper'

describe 'visiting /news' do
  context 'as a user' do
    it 'can see articles' do
      visit '/news'

      expect(page).to have_css('.article', count: 20)
    end
  end
end
