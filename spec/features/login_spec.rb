feature "Login Specs" do
  scenario 'so that user can login, user can visit the login page' do
    visit '/sessions/new'
    expect(page.status_code).to eq(200)
  end

  scenario 'user logs in and sees spaces ' do
    visit '/sessions/new'
    fill_in :email, with: 'email'
    fill_in :password, with: 'password'
    click_button('Login!')
    expect(current_path).to eq('/spaces')
  end
end
