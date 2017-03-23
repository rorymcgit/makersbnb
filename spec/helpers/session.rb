module SessionHelpers

  def sign_up(
    full_name: "Ryan Chu",
    username: "Azntastic",
    email: "azntastic_ryan@hotmail.com",
    password: "123456",
    password_confirmation: "123456"
    )
    visit('/')
    fill_in :full_name, with: full_name
    fill_in :username, with: username
    fill_in :email, with: email
    fill_in :password, with: password
    fill_in :confirm_password, with: password_confirmation
    click_button('Sign Up')
  end

  def sign_out
    visit('/spaces')
    click_button('Sign out')
  end

  def book_space
    visit('/spaces')
    click_button('Book')
  end

  def create_space(name: "Party House",
    description: "Big house, 07544502382",
    price: 9.99,
    from_date: DateTime.new(2017, 7, 5),
    to_date: DateTime.new(2017, 7, 10)
    )

    visit('/spaces/new')
    fill_in :name, with: name
    fill_in :description, with: description
    fill_in :price, with: price
    fill_in :from_date, with: from_date
    fill_in :to_date, with: to_date
    click_button("List Space")
  end

end
