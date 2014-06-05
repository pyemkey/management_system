require 'spec_helper'

feature 'Removing skills' do
  let(:user) { create(:confirmed_user) }
  background do
    sign_in_as!(user)
    visit user_path(user)
  end

  scenario 'Remove an skills' do
    within('#skills') do
      fill_in 'Add new', with: 'programming, self-improvement, psychology'
      click_button 'Save'
    end
    
    expect(page).to have_content('programming')

    find("#skills ul li", text: 'programming').click_link('Delete')
    expect(page).to_not have_content('programming')
  end
end
