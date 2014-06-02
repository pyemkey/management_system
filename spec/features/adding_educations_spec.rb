require 'spec_helper'

feature 'Adding Educations' do
  background do
    @user = create(:confirmed_user)
    sign_in_as!(@user)
  end
  scenario 'Add education' do
    visit user_path(@user.id)
    within('#education') do
      expect(page).to have_css('h2', text: 'Education')
    end 
    click_link 'Add Education'
    expect(page).to have_content('New Education')
    fill_in 'School', with: 'Politechnika Rzeszowska'
    select '2005', from: 'education[started_on(1i)]'
    select '2007', from: 'education[ended_on(1i)]'
    fill_in 'Thesis', with: 'Artificial Intelligence'
    fill_in 'Degree', with: 'Master'
    click_button 'Save'
    within("#education") do
      expect(page).to have_content('Politechnika Rzeszowska')
    end
  end
end
