#I will eventually use a wait_until where hard waits are

Given(/^I have loaded the Uitest page$/) do
  @uitest = Uitest.new
end

When(/^I enter some text and click the search button$/) do
  @uitest.home_page.search_bar.set 'Test'
  @uitest.home_page.search_button.click
end

Then(/^I should see my search results returned$/) do
  #TODO - to be implemented
end