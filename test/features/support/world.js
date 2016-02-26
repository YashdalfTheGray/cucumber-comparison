var webdriver = require('webdriver-sync');


function World() {
    this.browser = new webdriver.ChromeDriver();
    this.browser.manage().window().setSize(new webdriver.Dimension(800, 800));
}

module.exports = function() {
    this.World = World;
};
