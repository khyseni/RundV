from PageObjectLibrary import PageObject


class TravelHealthInsurancePage(PageObject):
    PAGE_TITLE = "Auslandsreise - Krankenversicherung: Tarif berechnen"
    PAGE_URL = "/ms/arkv/index.html"

    _locators = {
        "startdate": "name:versicherungsbeginn",

    }

    def _is_current_page(self):
        location = self.se2lib.get_location()
        if not location.endswith(self.PAGE_URL):
             message = "Expected location to end with " + \
                self.PAGE_URL + " but it did not"
             raise Exception(message)
        return True



