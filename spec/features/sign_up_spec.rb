#implement tests for sign up - can't sign up w/o email etc

feature "sign up" do
  scenario "User signs ups, and increases user count by 1" do
    expect{sign_up}.to change(User, :count).by(1)
  end


  scenario "requires a matching confirmation password" do
    expect {sign_up(password_confirmation: 'wrong')}.not_to change(User, :count)
  end

  scenario "user is logged in on signup" do
    sign_up
    expect(current_path).to eq('/')
    expect(page).to have_content("Welcome, Azntastic")
  end
end
