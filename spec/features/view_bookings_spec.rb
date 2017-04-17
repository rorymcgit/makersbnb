feature "View bookings" do
  scenario "view bookings logged in user has made" do
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
    expect(current_path).to eq('/bookings')
    expect(page).to have_content("Here are your bookings, Booker")
    expect(page).to have_content("Name: Party House")
    expect(page).to have_content("Description: Big house, 07544502382")
    expect(page).to have_content("Price per night: £9.99")
    expect(page).to have_content("Requested from: 05 July 2017")
    expect(page).to have_content("Requested to: 10 July 2017")
    expect(page).to have_content("This booking request has not been accepted yet.")
  end
end
