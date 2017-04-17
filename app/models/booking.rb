class Booking
  include DataMapper::Resource

  property :id, Serial
  property :confirmed, Boolean

  belongs_to :space
  belongs_to :user

  def self.confirm(bookings)
    bookings.each do |booking|
      booking.update(:confirmed => true)
    end
  end

end
