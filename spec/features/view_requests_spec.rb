feature "view requests" do
  scenario "view requests other users have made on your spaces" do
    sign_up
    create_space
    sign_up(
      full_name: "Booker",
      username: "Booking_guy",
      email: "wannabook@hotmail.com",
      password: "abc",
      password_confirmation: "abc"
      )
    visit('/spaces')
    click_button("Book")
    visit('sessions/new')
    fill_in :email, with: 'azntastic_ryan@hotmail.com'
    fill_in :password, with: '123456'
    click_button('Log In')
    visit('/requests')
    expect(page).to have_content("Here are your requests for your spaces, Ryan Chu")
    expect(page).to have_content("Name: Party House")
  end

  scenario 'user who is not logged in cannot visit requests page' do
    visit('/requests')
    expect(page).not_to have_current_path('/requests')
    expect(page).to have_current_path('/sessions/new')
    expect(page).to have_content("Please sign in")
  end

end
