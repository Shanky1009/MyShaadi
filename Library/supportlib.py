from AppiumLibrary import AppiumLibrary
from appium.webdriver.common.touch_action import TouchAction
from appium.webdriver.appium_service import AppiumService

class supportlib(AppiumLibrary):
    def get_driver_instance(self):
        return self._current_application()

    def start_appium(self):
        appium_service = AppiumService()
        appium_service.start()

    def stop_appium(self):
        appium_service = AppiumService()
        appium_service.stop()

    def tap_and_hold_one_element_and_moveTo_another_element(self, locator1, locator2, duration=2000):
        """ Long press the element with optional duration """
        driver = self._current_application()
        element1 = self._element_find(locator1, True, True)
        element2 = self._element_find(locator2, True, True)
        action = TouchAction(driver)
        action.long_press(element1).move_to(element2).wait(duration).release().perform()

    def scroll_down_android(self, locator, n):
        driver = self._current_application()
        window_size = driver.get_window_size()
        width = window_size["width"]
        height = window_size["height"]
        x = width / 2
        y = height * 3 / 4
        x1 = width / 2
        y1 = height * 1 / 4
        print("width=" + repr(width) + ", height=" + repr(height))
        # srch_text = normalize("NFKD", text)
        # src = str(normalize("NFKD", self.get_source()))
        src = self.get_source()
        # src = self.get_source();
        # elements = self._element_find(locator, False, True)
        numtries = 0
        while not ((src.__contains__(locator)) or (numtries > int(n))):
            driver.swipe(x, y, x1, y1)
            # src = str(normalize("NFKD", self.get_source()))
            window_size = driver.get_window_size()
            width = window_size["width"]
            height = window_size["height"]
            x = width / 2
            y = height * 3 / 4
            x1 = width / 2
            y1 = height * 1 / 4
            numtries += 1
            src = self.get_source()
        if numtries > int(n):
            return "failure"
        pass