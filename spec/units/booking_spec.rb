describe Booking do

  let(:booking){described_class.new}
  let!(:real_booking_1) do
    Booking.create(user_id: 1, space_id: 1, confirmed: false )
  end
  let!(:real_booking_2) do
      Booking.create(user_id: 2, space_id: 2, confirmed: false )
  end

  it 'responds to .id' do
    expect(booking).to respond_to(:id)
  end

  it 'responds to .confirmed' do
    expect(booking).to respond_to(:confirmed)
  end

  it 'can update confirmations to true' do
    bookings = [real_booking_1, real_booking_2]
    Booking.confirm(bookings)
    expect(real_booking_1.confirmed).to eq(true)
    expect(real_booking_2.confirmed).to eq(true)
  end


end
