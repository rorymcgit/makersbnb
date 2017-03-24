feature 'can create spaces' do

  scenario 'user can create a space' do
    sign_up
    create_space
    expect(current_path).to eq('/spaces')
    expect(page).to have_content "Party House"
  end

  scenario 'user cannot create a space with an invalid price' do
    sign_up
    create_space(price: 'not a float')
    expect(page).to have_content "Price must be a number"
  end

  scenario 'user cannot create a space with an invalid from date' do
    sign_up
    create_space(from_date: 'not a date')
    expect(page).to have_content "From date must be of type DateTime"
  end

  scenario 'user cannot create a space with an invalid to date' do
    sign_up
    create_space(to_date: 'not a date')
    expect(page).to have_content "To date must be of type DateTime"
  end

  scenario 'user cannot create a space with an invalid media url' do
    sign_up
    create_space(media_url: 'not a url')
    expect(page).to have_content "Media has an invalid format"
  end

  scenario 'user who is not logged in cannot create a space' do
    visit('/spaces/new')
    expect(page).not_to have_current_path('/spaces/new')
    expect(page).to have_current_path('/sessions/new')
    expect(page).to have_content("Please sign in")
  end

end
