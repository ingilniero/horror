When(/^I submit an entry$/) do
  within '#add-entry-form' do
    fill_in 'entry[title]', with: 'An ugly code entry I found'
    fill_in 'entry[content]', with: 'Some really ugly example of bad code should go in this text area'
    click_on 'Submit horror'
  end
end

Then(/^I should see the just submitted entry$/) do
  within '#entries-list' do
    expect(body).to have_content 'An ugly code entry I found'
    expect(body).to have_content 'Anonymous'
  end
end
