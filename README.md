# partyBnB [![Build Status](https://travis-ci.org/rorymcgit/makersbnb.svg?branch=master)](https://travis-ci.org/rorymcgit/makersbnb)

This project is a clone of Airbnb with functionality such as:
- User account creation
- View available spaces (while logged in or as an anonymous user)
- List a space for others to book
- View requests made for your spaces and confirm them
- View your bookings and their confirmation statuses  

View the website live on Heroku https://partybnb.herokuapp.com/


#### Technologies used:
- Ruby
- RSpec
- Sinatra
- DataMapper (a Ruby ORM)
- BCrypt (for password hashing)
- PostgreSQL (a relational DBMS)


#### Instructions for use:
- Clone this repo
- Run ```bundle``` to install dependencies
- Run ```rspec``` to view tests
- If you don't already have PostgreSQL ```brew install postgresql```
- To create databases:
```
$ createdb makersbnb_development
$ createdb makersbnb_test
```
- Run ```rackup``` to auto-upgrade and start server
- In your browser, visit http://localhost:9292/
