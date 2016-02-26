var webdriver = require('webdriver-sync');
var By = webdriver.By;

module.exports = function() {
    this.Given(/^that I'm at the promises homepage$/, function () {
        this.browser.get('https://promises-demo.firebaseapp.com/#/');
    });

    this.When(/^I click on Simple Handling$/, function () {
        var self = this;
        var toolbar = this.browser.findElement(By.className('md-toolbar-tools'));
        var hamburger = toolbar.findElement(By.tagName('button'));
        hamburger.click();
        var simpleHandlingLink = this.browser.findElement(By.cssSelector('.demo-list-item > span:nth-child(1)'));
        webdriver.wait(function() {
            return simpleHandlingLink.isDisplayed();
        }, { timeout: 1000, period: 100 });
        simpleHandlingLink.click();
    });

    this.Then(/^I should see the simple handling page$/, function (callback) {
        callback.pending();
    });
};
