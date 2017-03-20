feature "#Space" do

  scenario "user can load spaces page" do
    visit("/spaces")
    expect(page.status_code).to be(200)
  end

  scenario "user can visit spaces page" do
    visit("/spaces")
    expect(page).to have_content("List of spaces")
  end


end
