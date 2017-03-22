require 'data_mapper'
require 'dm-postgres-adapter'
require 'bcrypt'

class User
  attr_reader :password
  attr_accessor :password_confirmation
  include DataMapper::Resource

  property :id,        Serial
  property :full_name, String, required: true
  property :username,  String, required: true, unique: true
  property :email,     String, unique: true, required: true
  property :password_hash,  Text

  has n, :spaces

  validates_confirmation_of :password
  validates_presence_of :password

  def password=(password)
    @password = password
    self.password_hash = BCrypt::Password.create(password)
  end

  def self.authenticate(email, password)
    user = first(email: email)
    if user && BCrypt::Password.new(user.password_hash) == password
      user
    else
      nil
    end
  end
end
