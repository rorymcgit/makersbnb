require 'data_mapper'
require 'dm-postgres-adapter'
require 'bcrypt'

class User

  include DataMapper::Resource

  property :id,        Serial
  property :full_name, String
  property :username,  String
  property :email,     String
  property :password,  String

  # has n, :links, :through => Resource
end
