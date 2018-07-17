#I will eventually use a wait_until where hard waits are

Given(/^I have loaded the Uitest page$/) do
  @uitest = Uitest.new
  sleep 5
end

When(/^I enter some text and click the search button$/) do
  @uitest.home_page.search_bar.set 'Test'
  #@uitest.home_page.search_bar.send_keys 'Test'
  sleep 1
  @uitest.home_page.search_button.click
  sleep 5
end

Then(/^I should see my search results returned$/) do
  #TODO - to be implemented
end