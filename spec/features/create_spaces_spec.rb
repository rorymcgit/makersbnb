feature 'can create spaces' do
  scenario 'user can create a space' do
    sign_up
    create_space
    expect(current_path).to eq('/spaces')
    expect(page).to have_content "Party House"
  end

  # scenario 'user cannot create a space without a name' do
  #   sign_up
  #   create_space(name: '')
  #   expect(page).to have_content "??"
  # end
end
