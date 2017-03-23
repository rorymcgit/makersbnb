describe Booking do

  # let(:space) { double }
  # let(:user) { double }

  # let!(:booking) do 
  #   Booking.create(confirmed: false)
  # end 

  describe 'booking confirmation update' do 
    it 'sets booking confirmation to true' do
      booking = Booking.create(confirmed: false, space_id: 1, user_id: 1)
      expect(booking.update(:confirmed => true)).to eq(booking.confirmed)
  end 

end 
end 