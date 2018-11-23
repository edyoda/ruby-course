describe "the signin process", type: :feature do
  before :each do
    User.create(email: 'user@example.com', password: 'password')
  end

  it "signs me in" do
    visit '/users/new'
      fill_in 'user[name]', with: 'user@example.com'
      fill_in 'user[email]', with: 'user@example.com'
      fill_in 'user[password]', with: 'user@example.com'
      fill_in 'user[confirm_password]', with: 'user@example.com'
      click_button 'Sign UP'
      sleep(10)
      expect(page).to have_content 'Success'
  end
end
