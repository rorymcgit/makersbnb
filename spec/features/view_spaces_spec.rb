feature "#Space" do

  before do
    Space.create(
              name: "Party House",
              description: "Big house, 07544502382",
              price: 9.99,
              from_date: DateTime.new(2017, 7, 5),
              to_date: DateTime.new(2017, 7, 10)
              )
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
  end


end
