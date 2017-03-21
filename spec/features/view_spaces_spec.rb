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
    expect(page).to have_content("List of spaces")
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


end
