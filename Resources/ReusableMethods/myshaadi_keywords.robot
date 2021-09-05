*** Settings ***
Documentation  Login Keywords
Library  ../../Library/supportlib.py

Resource  ../Locators/login.txt
Resource  ../Locators/myshaadi.txt

*** Keywords ***
#  ***************************************  Step 5   *******************************************
Go to My Shaadi screen
    [Documentation]  define
    [Arguments]
    click element   ${home_tab}
    wait until element is visible  ${myshaadi_title}  5
    element should be visible   ${myshaadi_title}

#  ***************************************  Step 6   *******************************************
Verify widgets on My Shaadi screen
    [Documentation]  define
    [Arguments]
    element should be visible   ${premium_matches_title}
    element should be visible   ${premium_widget_profile1}
    scroll down android   ${premium_matches_title}  0
    capture page screenshot
    element should be visible   ${new_matches_title}
    element should be visible   ${new_widget_profile1}

#  ***************************************  Step 7   *******************************************
Send connect to profile from each widget
    [Documentation]  define
    [Arguments]
    scroll up android   ${new_matches_title}    0
    capture page screenshot
    wait until element is visible   ${premium_widget_profile1}  5
    click element   ${premium_widget_profile1_connectNow}
    scroll down android   ${premium_matches_title}  0
    capture page screenshot
    wait until element is visible   ${new_widget_profile1}  5
    click element   ${new_widget_profile1_connectNow}

