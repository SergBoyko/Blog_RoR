def sigh_up

  visit new_user_registration_path
  fill_in :user_username, with: '1FooBar'
  fill_in :user_email, with: '1foo@bar.com'
  fill_in :user_password, with: '1234567'
  fill_in :user_password_confirmation, with: '1234567'
  click_button 'Sign up'
end