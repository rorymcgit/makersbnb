describe Booking do

  let!(:booking) do
    Booking.create(confirmed: false, space_id: 1, user_id: 1)
  end

  describe 'booking confirmation update' do
    it 'sets booking confirmation to true' do
      expect(booking.update(:confirmed => true)).to eq(booking.confirmed)
  end

end
end
