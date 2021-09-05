# MyShaadi

Pre-Installation Setup Requirements: Python 3.7 should be installed in the system

Step 1: Download & Open Pycharm IDE from link - https://www.jetbrains.com/pycharm/download/#section=mac

Step 2: git clone the project repo

Step 3: Open project in Pycharm

Step 4: Setting Python Interpreter: After downloading Pycharm > Click on Preferences > Project: MyShaadi > Python Interpreter
  
  4.1: In Python Interpreter > Click on gear icon > Add > New environment > Set Project Location > Select Base interpreter > Click on "OK"
  
  4.2: Add following packages in the Interpreter: 
      Appium-Python-Client, robotframework, robotframework-appiumlibrary, robotframework-selenium2library, robotframework-seleniumlibrary, selenium, requests

Step 5: Restart IDE

Step 6: New Virtual Environment: Now "venv" folder should be visible in project root directory for new virtual python env.

Step 7: Open Terminal(Present at the bottom left) in IDE to check virtual env. is set correctly like this: (venv) <SystemName>:MyShaadi <SystemUsername>$ 

Step 8: After opening terminal run the following command to install all build packages in project root directory using requirements.txt file:
        pip install -r requirements.txt

Step 9: All the dependent python and robot libraries should installed via requirements.txt file

Step 10: Now you are all set to execute robot command to run all test cases

Step 11: Robot command to run Test Cases in PyCharm: 

robot -d Report/ -i test TestScripts/

Step 12: where "-d" is to create Report Directory & "-i" is to run the Tagged test cases

Step 13: Project Structure:

13.1: "Library" folder contains all the support libraries and user define libraries

13.2: "Report" folder contains all the Reports, Logs and screenshots of Test execution

13.3: "Resources" folder contains Resusable methods and Locators

    13.3.1: "Locators" folder contains page objects
  
    13.3.2: "ReusableMethods" folder conatins commen components and methods

13.4: "TestScripts" folder contains the actual test script written

13.5: "requirements.txt" contains required python libraries

Step 14: Robot file stricture:
    
    14.1: "*** Settings ***" contains all the imports and Reusable methods path. Test Setup and Teardown methods.

    14.2: "*** Variables ***" contains local variables
    
    14.3: "*** Test Cases ***" contains all test scripts declaration steps for Android (To give abstract view)
    
        14.3.1: Each test/keyword in Test script is separately defined under ReusableMethods/<testscriptname>.robot files
