feature "Approve Booking" do

  scenario "Space owner approves a requested booking" do
    sign_up
    create_space
    sign_out
    sign_up(
      full_name: "Booking Person",
      username: "Booker",
      email: "book@hotmail.com",
      password: "booky",
      password_confirmation: "booky"
      )
    book_space
    sign_out
    sign_in
    visit('/requests')
    click_button('Approve')
    expect(page).to have_content("true")
  end

end
