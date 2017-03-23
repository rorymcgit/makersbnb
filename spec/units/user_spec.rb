describe User do

  let!(:test_user) do
    User.create(full_name: 'test', username: 'test', email: 'test@test.com', password: '12345', password_confirmation: '12345')
  end

describe "user authentication" do
  it "it authenticates when given valid email and password" do
    # sign_up
    authenticated_user = User.authenticate(test_user.email, test_user.password)
    expect(authenticated_user).to eq test_user
  end

  it "it does not authenticate when given invalid parameters" do
    expect(User.authenticate(test_user.email, 'bad password')).to be_nil
  end
end

  it 'It does not create a user with an invalid email' do 
  expect{User.create(full_name: 'test', username: 'test', email: 'testtest.com',
   password: '12345', password_confirmation: '12345')}.not_to change(User, :count)
end 
 
end
