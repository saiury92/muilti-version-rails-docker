Given /^a valid user$/ do
  @user = User.create!({
    :email => "test001@example.com",
    :password => "12345678",
    :password_confirmation => "12345678"
  })
end

When /^I go to the login page$/ do
  visit new_user_session_path
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