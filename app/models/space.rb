class Space

  include DataMapper::Resource

  property :id, Serial
  property :name, String, :required => true
  property :description, String, :required => true
  property :price, Float, :required => true
  property :from_date, DateTime, :required => true
  property :to_date, DateTime, :required => true

  has n, :bookings

  belongs_to :user

end
