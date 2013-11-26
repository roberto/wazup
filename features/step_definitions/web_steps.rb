Given(/^I am on "([^"]*)"$/) do |address|
  visit address
end
 
When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |element, text|
  fill_in element, with: text
end
 
Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text
end
