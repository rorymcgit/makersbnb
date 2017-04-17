

feature "Login Specs" do
  scenario 'so that user can login, user can visit the login page' do
    visit '/sessions/new'
    expect(page.status_code).to eq(200)
  end

  scenario 'user logs in and sees spaces ' do
    # User.create(email: 'test@test.com', password: '12345', password_confirmation: '12345')
    sign_up
    visit '/sessions/new'
    fill_in :email, with: 'azntastic_ryan@hotmail.com'
    fill_in :password, with: '123456'
    click_button('Log In')
    expect(current_path).to eq('/spaces')
  end

  scenario 'user logs in with an incorrect password' do
    sign_up
    sign_in(password: 'qweerty')
    expect(page).to have_content('Invalid email address or password')
  end

end
