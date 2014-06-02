module AuthenticationHelper
  def sign_in_as!(user)
    visit '/sign-in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
  end
end

RSpec.configure do |c|
  c.include AuthenticationHelper, type: :feature
end
