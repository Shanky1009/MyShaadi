*** Settings ***
Documentation  MyShaadi Test Script
Library  ../../Library/supportlib.py

Resource  ../../Resources/ReusableMethods/commonkeywords.robot
Resource  ../../Resources/ReusableMethods/login_keywords.robot

Test Setup  Open MyShaadi Android App
Test Teardown  Close Application

*** Variables ***

*** Test Cases ***
MyShaadi_Test0001: Login into Shaadi App
    [Documentation]  Enter username and password to login into the Shaadi app
    [Tags]      test

    Log     "Step 1: First step"
    Verify App is launched

    Log     "Step 2: Second Step"
    Go to Login screen

    Log     "Step 3: Third Step"
    Enter Email ID and Password

    Log     "Step 4: Fourth Step"
    Verify post-login screen is displayed