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
    click_button('Login!')
    visit('/requests')
    expect(page).to have_content("Here are your requests, Ryan Chu")
    expect(page).to have_content("Name: Party House")
  end
end
