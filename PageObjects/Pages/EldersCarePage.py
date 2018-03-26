from PageObjectLibrary import PageObject


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

            "Weiter": "Weiter"
    }

    def answer_questions(self, *options):
        for a in options:
            self.se2lib.wait_until_page_contains(a)
            self.se2lib.click_element('xpath=//*[contains(text(),"' + a + '")]')
            self.se2lib.wait_until_page_contains(self.locator.Weiter)
            self.se2lib.click_link(self.locator.Weiter)

    def check_results(self, *options):
        self.se2lib.wait_until_page_contains('Ihre Filter')
        for a in options:
            self.se2lib.wait_until_page_contains(a)






