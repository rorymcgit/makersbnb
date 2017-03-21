feature 'can create spaces' do
  scenario 'user can create a space' do
    visit '/spaces/new'
    fill_in :name, with: "Party House"
    fill_in :description, with: "Big house, 07544502382"
    fill_in :price, with: 9.99
    fill_in :from_date, with: DateTime.new(2017, 7, 5)
    fill_in :to_date, with: DateTime.new(2017, 7, 10)
    click_button "List Space"
    expect(current_path).to eq('/spaces')
    expect(page).to have_content "Party House"
  end
end
