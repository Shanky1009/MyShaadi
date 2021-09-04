*** Settings ***
Documentation  MyShaadi Test Script
Library  ../../Library/supportlib.py

Resource  ../../Resources/ReusableMethods/commonkeywords.robot
Resource  ../../Resources/ReusableMethods/login_keywords.robot

Test Setup  Open MyShaadi Android App
Test Teardown  Close Application

*** Variables ***

*** Test Cases ***
MyShaadi_Test0002: Send connection request to profiles
    [Documentation]  Send connection requests to profiles from Premium Matches and New Matches
    [Tags]

    Log     "Step 1: First step"



