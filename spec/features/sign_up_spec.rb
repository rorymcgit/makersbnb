feature "sign up" do
  scenario "User signs ups, and increases user count by 1" do
    expect{sign_up}.to change(User, :count).by(1)
  end
end
