Given(/^that I'm at the promises homepage$/) do
    visit PromisesPage
end

When(/^I click on Simple Handling$/) do
    on(PromisesPage).simple_handling
end

Then(/^I should see the simple handling page$/) do
    expect(on(SimpleHandlingPage).loaded?).to be true
end
