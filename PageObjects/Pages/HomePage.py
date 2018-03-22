# -*-coding: iso-8859-1 -*-
from PageObjectLibrary import PageObject


class HomePage(PageObject):

    PAGE_TITLE = "R+V Versicherung"
    PAGE_URL = "/home/"

    _locators = {
        "product_list": "name=Unsere Top-Produkte",
        "calculate_yourself": "name=Rechnen Sie selbst"
    }

    def _is_current_page(self):
        location = self.se2lib.get_location()
        if not location.endswith(self.PAGE_URL):
             message = "Expected location to end with " + \
                self.PAGE_URL + " but it did not"
             raise Exception(message)
        return True

    def choose_product(self, product):
        self.se2lib.select_from_list_by_index(self.locator.product_list.strip(), product)

        #self.se2lib.select_from_list_by_value(self.locator.product_list, product)


