describe Space do

  let(:space){described_class.new}

  it 'responds to .id' do
    expect(space).to respond_to(:id)
  end

  it 'responds to .name' do
    expect(space).to respond_to(:name)
  end

  it 'responds to .description' do
    expect(space).to respond_to(:description)
  end

  it 'responds to .price' do
    expect(space).to respond_to(:price)
  end


end
