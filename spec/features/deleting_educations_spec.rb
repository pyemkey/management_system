require 'spec_helper'

feature 'Deleting Educations' do
  let(:user) { create(:confirmed_user) }
  let!(:education) { create(:education, user: user) }
  background do 
    sign_in_as!(user)
    visit user_path(user)
  end

  scenario 'Deleting an education' do
    within("#education") do 
      click_link 'Delete'
    end
    expect(page).to_not have_content(education.institution_name) 
  end
end
