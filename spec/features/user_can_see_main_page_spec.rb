require 'rails_helper'

describe 'visiting /news' do
  context 'as a user' do
    it 'can see articles' do
      visit '/news'

      expect(page).to have_css('.article', count: 20)
    end
  end
end

describe 'visitng /news with language, country, category, sources or search params' do
  context 'as a user' do
    it 'shows articles according to those parameters' do
      visit '/news?sources=cnn'
      expect(page).to have_content('From: CNN', count: 10)
      visit '/news?category=business'
      expect(page).to have_css('.article', count: 20)
      visit '/news?q=bitcoin'
      expect(page).to have_css('.article')
    end
  end
end
