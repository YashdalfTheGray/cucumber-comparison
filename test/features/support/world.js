var webdriver = require('webdriver-sync');


function World() {
    this.browser = new webdriver.ChromeDriver();
}

module.exports = function() {
    this.World = World;
};
