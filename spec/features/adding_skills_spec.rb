require 'spec_helper'

feature 'Adding skills' do
  let!(:user) { create(:confirmed_user) }

  background do
    sign_in_as!(user)
    visit user_path(user)
  end

  scenario 'Add skills' do
    within '#skills' do
      fill_in 'Add new', with: 'Ruby, ruby on rails'
      click_button 'Save'
    end
    within("#skills") { expect(page).to have_css('li', text: 'ruby') }
  end
end
