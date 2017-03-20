feature "sign up" do
  
  full_name = "Ryan Chu"
  username = "Azntastic"
  email = "azntasticr_ryan@hotmail.com"
  password = "123456"

  scenario "User signs ups, and increases user count by 1" do
    visit '/'
    fill_in :full_name, with: full_name
    fill_in :username, with: username
    fill_in :email, with: email
    fill_in :password, with: password
    click_button('Sign Up')
  expect(User.count).to be(1)
end
end
