from PageObjectLibrary import PageObject


class LoginPage(PageObject):
    PAGE_TITLE = "Login"
    PAGE_URL = "/meinerv/public/login"

    _locators = {
        "username": "xpath=//*[@name='benutzername']",
        "password": "xpath=//*[@name='passwort']",
        "loginbtn": "id=loginBtn",
        "errormsg": "xpath=//*[@class='error errorcontainer']",
    }

    def _is_current_page(self):
        location = self.se2lib.get_location()
        if not location.endswith(self.PAGE_URL):
             message = "Expected location to end with " + \
                self.PAGE_URL + " but it did not"
             raise Exception(message)
        return True

    def enter_username(self, username):

        self.se2lib.input_text(self.locator.username, username)

    def enter_password(self, password):

        self.se2lib.input_text(self.locator.password, password)

    def click_login_button(self):
        self.se2lib.click_button(self.locator.loginbtn)

    def invalid_credentials_message(self, message):
        self.se2lib.element_text_should_be(self.locator.errormsg, message)


'''
 login page locators defined
        self.username = driver.find_element(By.XPATH, Locator.username)
        self.password = driver.find_element(By.XPATH, Locator.password)
        self.loginBtn = driver.find_element(By.XPATH, Locator.loginBtn)

    def getUsername(self):
        return self.username

    def getPassword(self):
        return self.password

    def getLoginBtn(self):
        return self.loginBtn


 Login page locator
    username = "//input[@name='benutzername']"
    password = "//input[@name='passwort']"
    loginBtn = "//button[@id='loginBtn']"

'''