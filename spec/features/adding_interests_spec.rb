require 'spec_helper'

feature 'Adding interests' do
  let(:user) { create(:confirmed_user) }
  background do
    sign_in_as!(user)
    visit user_path(user)
  end

  scenario 'Add new interests' do
    within('#interests') do
      fill_in 'Add new', with: 'programming, self-improvement, psychology'
      click_button 'Save'
    end
    within('#interests') { expect(page).to have_css('li', text: 'psychology') }
  end
end
