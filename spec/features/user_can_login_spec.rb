require 'rails_helper'

describe 'visiting /' do
  context 'as a visitor' do
    it 'can login' do
      expect(User.count).to eq(0)
      stub_google_auth
      visit '/'
      click_on "Login"

      expect(User.count).to eq(1)
      expect(page).to have_content("Welcome testy")
      expect(User.first.email).to eq('test@test.com')
    end

    it 'can logout' do
      stub_google_auth
      visit '/'
      click_on "Login"

      expect(page).to have_content("Logout")

      click_on "Logout"

      expect(current_path).to eq('/')
    end
  end
end
