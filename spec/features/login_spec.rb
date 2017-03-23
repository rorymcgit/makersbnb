

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
    click_button('Login!')
    expect(current_path).to eq('/spaces')
  end
end
