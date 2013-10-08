Given(/^I visit the site$/) do
  visit root_path
end

Then(/^I should see the home page$/) do
  expect(body).to have_content 'Coding Hall of Horror'
end
