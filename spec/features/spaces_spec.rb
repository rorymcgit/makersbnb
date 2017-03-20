feature "#Space" do

  scenario "user can visit spaces page" do
    visit("/spaces")
    expect(page.status_code).to be(200);
  end

end
