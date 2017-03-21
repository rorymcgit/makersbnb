require 'data_mapper'
require 'dm-postgres-adapter'
require 'bcrypt'

class User

  include DataMapper::Resource

  property :id,        Serial
  property :full_name, String
  property :username,  String
  property :email,     String
  property :password_hash,  Text

  attr_reader :password

  def password=(password)
    @password = password
    self.password_hash = BCrypt::Password.create(password)
  end

  # has n, :links, :through => Resource
end
