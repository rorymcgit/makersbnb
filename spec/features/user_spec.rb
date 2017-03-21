describe User do

  let!(:test_user) do
    User.create(email: 'test@test.com', password: '12345', password_confirmation: '12345')
  end

feature "user authentication" do
  scenario "it authenticates when given valid email and password" do
    authenticated_user = User.authenticate(test_user.email, test_user.password)
    expect(authenticated_user).to eq test_user
  end

  scenario "it does not authenticate when given invalid parameters" do
    expect(User.authenticate(test_user.email, 'bad password')).to be_nil
  end
end

end
