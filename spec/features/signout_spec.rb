
  feature 'it can sign out when signed in' do
  scenario 'it signs out the user when button click Sign out' do
    sign_up
    click_button 'Sign out'
    expect(page).to have_content 'You are not logged in.'
    end

  end
