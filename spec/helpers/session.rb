module SessionHelpers

  def sign_up(
    full_name: "Ryan Chu"
    username: "Azntastic"
    email: "azntastic_ryan@hotmail.com"
    password: "123456"
    )
  visit '/'
  fill_in :full_name, with: full_name
  fill_in :username, with: username
  fill_in :email, with: email
  fill_in :password, with: password
  click_button('Sign Up')
  end
end
