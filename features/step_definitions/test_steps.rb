When(/^I successfully login into the Workbench UI$/) do
  @site = Uitest.new
  sleep 5
  @site.home_page.username.send_keys('admin')
  sleep 5
  @site.home_page.password.send_keys('admin')
  sleep 5
  @site.home_page.login.click
  sleep 5
end

When('I open the Uitest home page') do
  @site = Uitest.new
end

When(/^I choose to view the Service Area Map$/) do
  @site.home_page.view_service_map.click
end

Then(/^I should see the copyright information in the footer$/) do
  expect(@site.home_page.copyright.text).to eql "&copy; 2018 Servi-Tech, Inc. "
end

Then(/^I should see that the Service Area Map has been displayed$/) do
  expect(@site.test_page.service_map).to be_present
end