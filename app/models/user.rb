require 'data_mapper'
require 'dm-postgres-adapter'
require 'bcrypt'

class User
  attr_reader :password
  attr_accessor :password_confirmation
  include DataMapper::Resource

  property :id,        Serial
  property :full_name, String
  property :username,  String
  property :email,     String
  property :password_hash,  Text

  validates_confirmation_of :password

  def password=(password)
    @password = password
    self.password_hash = BCrypt::Password.create(password)
  end

  # has n, :links, :through => Resource
end
