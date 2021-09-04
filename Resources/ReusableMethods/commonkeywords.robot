*** Settings ***
Documentation    Common Keywords use by all Test Scripts
Library  ../../Library/supportlib.py

Resource  ../Locators/appium_capabilities.txt

*** Keywords ***

# Android Automation
Open MyShaadi Android App
    [Documentation]    Opens the Android App with a new appium session
    Open Application   ${Appium_Server}  automationName=${automationName}  platformName=${android_Platform_Name}  platformVersion=${android_Platform_Version}  deviceName=${android_Device_Name}  appPackage=${Package_Name}  appActivity=${Activity_Name}  autoGrantPermissions=true  noReset=false
#appWaitActivity=${Activity_Name}   app=${APK_Path}

hide keyboard when the field is entered
    [Documentation]  Hides the keyboard whenever it is required
        hide keyboard
