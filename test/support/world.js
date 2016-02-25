var webdriver = require('selenium-webdriver');

function World() {
    this.browser = new webdriver.builder().forBrowser('Chrome').build();
}

module.exports = function() {
    this.World = World;
};
