
feature "Nav bar specs" do
  scenario 'Shows the right buttons when signed in' do
    sign_up
    expect(page).to have_selector(:link_or_button, 'Sign out')
    expect(page).to have_content('List a space')
    expect(page).to have_content('View Requests')
    expect(page).to have_content('View Bookings')

  end

  scenario 'Shows the right buttons when signed out' do
    visit('/')
    expect(page).to have_content('Sign In')
    expect(page).to have_content('Sign Up')
    expect(page).not_to have_content('List Space')
    expect(page).not_to have_content('View Requests')
    expect(page).not_to have_content('View Bookings')

  end


end
