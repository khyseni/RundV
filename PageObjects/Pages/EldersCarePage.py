from PageObjectLibrary import PageObject
from selenium import webdriver
from selenium.webdriver.common.action_chains import ActionChains


class EldersCarePage(PageObject):

    PAGE_TITLE = "Versicherungen zur Altersvorsorge"
    PAGE_URL = "/privatkunden/altersvorsorge"

    def _is_current_page(self):
        location = self.se2lib.get_location()
        if not location.endswith(self.PAGE_URL):
             message = "Expected location to end with " + \
                self.PAGE_URL + " but it did not"
             raise Exception(message)
        return True

    _locators = {
            "drg": "xpath=//div[@class='grip cbutton cbutton--effect-jagoda cbutton--click']",
            "trg": "xpath=//div[@class='grip cbutton cbutton--effect-jagoda cbutton--click']"
    }




