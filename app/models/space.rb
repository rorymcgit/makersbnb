class Space

  include DataMapper::Resource

  property :id, Serial
  property :name, String, :required => true
  property :description, String, :required => true
  property :price, Float, :required => true
  property :from_date, DateTime, :required => true
  property :to_date, DateTime, :required => true
  property :media, String, :length => 250
  has n, :bookings

  validates_format_of :media, :with => /https?:\/\/[\S]+/

  belongs_to :user

end
