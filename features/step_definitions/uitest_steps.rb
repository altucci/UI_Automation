When(/^I run a simple test for Uitest$/) do
  @uitest = Uitest.new
  binding.pry
  sleep 1
  @uitest.home_page.search_bar.set 'Test'
  #@uitest.home_page.search_bar.send_keys 'Test'
  sleep 1
  @uitest.home_page.search_button.click
  sleep 1
end