DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/makersbnb_#{ENV["RACK_ENV"]}")
DataMapper.finalize
DataMapper.auto_upgrade!
