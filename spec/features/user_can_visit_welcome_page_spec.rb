require 'rails_helper'

describe "visiting /" do
  context "as a visitor" do
    it "can see the welcome page" do
      visit '/'

      expect(current_path).to eq("/")
      expect(page).to have_content("News Time")
    end
  end
end
