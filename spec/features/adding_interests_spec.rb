require 'spec_helper'

feature 'Adding interests' do
  let(:user) { create(:confirmed_user) }

  background do
    sign_in_as!(user)
    visit user_path(user) 
  end

  scenario 'Add interests' do
    within("#interests") do
      fill_in 'Add new', with: 'programming, sport'
      click_button 'Save'
    end
    within("#interests") do
      expect(page).to have_css('li', text: 'programming')
      expect(page).to have_css('li', text: 'sport')
    end
  end
end
