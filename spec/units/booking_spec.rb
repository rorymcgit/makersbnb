describe Booking do

  let(:booking){described_class.new}

  it 'responds to .id' do
    expect(booking).to respond_to(:id)
  end

  it 'responds to .confirmed' do
    expect(booking).to respond_to(:confirmed)
  end


end
