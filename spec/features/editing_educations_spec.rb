require 'spec_helper'

feature 'Editing Educations' do
  background do
    @user = create(:confirmed_user)
    sign_in_as!(@user)
  end
  scenario 'Updating an education' do
    education = create(:education, user: @user)
    visit edit_user_education_path(@user, education)
    
    fill_in 'School', with: 'AGH'
    click_button 'Update'

    within("#education") { expect(page).to have_content('AGH') }

    expect(page).to_not have_content(education.institution_name)
  end
end
