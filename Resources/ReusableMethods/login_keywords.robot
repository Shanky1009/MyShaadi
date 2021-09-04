*** Settings ***
Documentation  Login Keywords
Library  ../../Library/supportlib.py

Resource  ../Locators/login.txt

*** Keywords ***
#  ***************************************  Step 1   *******************************************
Verify App is launched
    [Documentation]  define
    [Arguments]
    wait until element is visible  ${welcomeLogin_btn}  5
    element should be visible   ${welcomeLogin_btn}
    element should be enabled   ${welcomeLogin_btn}

#  ***************************************  Step 2   *******************************************
Go to Login screen
    [Documentation]  define
    [Arguments]
    click element  ${welcomeLogin_btn}
    wait until element is visible  ${heading_txtView}

#  ***************************************  Step 3   *******************************************
Enter Email ID and Password
    [Documentation]  define
    [Arguments]
    click element   ${emailID_edtTxt}
    input text  ${emailID_edtTxt}  ${enterTxt_emailid}
    run keyword and ignore error  hide keyboard when the field is entered
    click element   ${password_edtTxt}
    input text  ${password_edtTxt}  ${enterTxt_password}
    run keyword and ignore error  hide keyboard when the field is entered
    wait until element is visible  ${login_btn}
    click element   ${login_btn}

#  ***************************************  Step 4   *******************************************
Verify post-login screen is displayed
    [Documentation]  define
    [Arguments]
    run keyword and ignore error    click skip menu button
    run keyword and ignore error    click close menu button
    wait until element is visible   ${home_tab}  5
    element should be visible   ${home_tab}

click skip menu button
    [Documentation]
        wait until element is visible  ${skip_title}  5
        click element   ${skip_title}

click close menu button
    [Documentation]
        wait until element is visible  ${menu_close}  5
        click element   ${menu_close}

