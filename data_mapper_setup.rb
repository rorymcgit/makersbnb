def data_mapper_config
  DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/MakersBnB_#{ENV["RACK_ENV"]}")
  DataMapper.finalize
  DataMapper.auto_upgrade!
end
