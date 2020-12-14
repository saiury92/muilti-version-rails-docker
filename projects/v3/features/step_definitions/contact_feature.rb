Given /^a valid user$/ do
  @user = User.create!({
    :email => "test01@example.com",
    :password => "12345678",
    :password_confirmation => "12345678"
  })
end

When /^I am on the signin page$/ do
  visit user_session_path
end

When /^I fill in the following:$/ do |table|
  table.rows_hash.each do |field, value|
    fill_in field.to_sym, :with => value
  end
end

When /^I press Log in$/ do
  click_button "Log in"
end

Then /^I should see Signed in successfully.$/ do
  find('p', text: 'Signed in successfully.', exact: true)
end