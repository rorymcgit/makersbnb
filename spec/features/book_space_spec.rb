feature 'Signed-in users can book a space' do

  before do
    sign_up
    create_space
  end

  scenario 'User books a space' do
    visit('/spaces')
    expect{click_button('Book')}.to change(Booking, :count).by(1)
    expect(current_path).to eq('/bookings')
    expect(page.status_code).to eq(200)
  end


end
