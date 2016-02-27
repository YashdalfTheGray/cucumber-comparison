Given(/^that I'm at the promises homepage$/) do
    visit(PromisesPage)
end

When(/^I click on Simple Handling$/) do
    on(PromisesPage).simple_handling
end

Then(/^I should see the simple handling page$/) do
    expect(on(SimpleHandlingPage).loaded?).to be true
end

Given(/^that I'm on the Simple Handling page$/) do
    visit(SimpleHandlingPage)
end

When(/^I fill "([^"]*)" with "([^"]*)"$/) do |input_box_id, input|
    on(SimpleHandlingPage).enter_text(input_box_id, input)
end

When(/^I click the set timeout button$/) do
    on(SimpleHandlingPage).click_set_timeout
end

Then(/^I should see a toast with message "([^"]*)"$/) do |message|
    expect(on(SimpleHandlingPage).toast_message).to eq message
end
