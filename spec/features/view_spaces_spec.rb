feature "#Space" do

  before do
  sign_up
  create_space
  end

  scenario "user can load spaces page" do
    visit("/spaces")
    expect(page.status_code).to be(200)
  end

  scenario "user can visit spaces page" do
    visit("/spaces")
    expect(page).to have_content("Available spaces")
  end

  scenario "displays the space's properties" do
    visit("/spaces")
    expect(page).to have_content("Name: Party House")
    expect(page).to have_content("Description: Big house, 07544502382")
    expect(page).to have_content("£9.99");
    expect(page).to have_content("Available from: 05 July 2017")
    expect(page).to have_content("Available to: 10 July 2017")
    expect(page).to have_selector(:link_or_button, "Book")
  end

  scenario 'cant see space if booking approved' do
    sign_out
    sign_up(full_name: "Booker Chu",
    username: "booker",
    email: "booker@booker.com",
    password: "123456",
    password_confirmation: "123456"
    )
    book_space
    sign_out
    sign_in
    visit '/requests'
    click_button 'Approve'
    sign_out
    sign_up(full_name: "Inspecter Chu",
    username: "inspecter",
    email: "inspecter@inspecter.com",
    password: "123456",
    password_confirmation: "123456"
    )
    visit '/spaces'
    expect(page).not_to have_content 'Party House'
  end

end
