*** Settings ***
Documentation  MyShaadi Test Script
Library  ../../Library/supportlib.py

Resource  ../../Resources/ReusableMethods/commonkeywords.robot
Resource  ../../Resources/ReusableMethods/login_keywords.robot
Resource  ../../Resources/ReusableMethods/myshaadi_keywords.robot

Test Setup  Open MyShaadi Android App
Test Teardown  Close Application

*** Variables ***

*** Test Cases ***
MyShaadi_Test0002: Send connection request to profiles
    [Documentation]  Send connection requests to profiles from Premium Matches and New Matches
    [Tags]      test

    Log     "Step 1: First step"
    Verify App is launched

    Log     "Step 2: Second Step"
    Go to Login screen

    Log     "Step 3: Third Step"
    Enter Email ID and Password

    Log     "Step 4: Fourth Step"
    Verify post-login screen is displayed

    Log     "Step 5: Fifth Step"
    Go to My Shaadi screen

    Log     "Step 6: Sixth Step"
    Verify widgets on My Shaadi screen

    Log     "Step 7: Seventh Step"
    Send connect to profile from each widget




