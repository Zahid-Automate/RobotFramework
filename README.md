<h1>Robot Framework Demo</h1>
Robot Framework is a generic open source test automation framework. In addition to introducing Robot Framework test data syntax, this demo shows how to execute test cases, how generated reports and logs look like, and how to extend the framework with custom test libraries.

Contents:

<h1>Downloading package</h1>
To get the project, you can either download and extract the latest package from the GitHub or checkout the source code directly. As a result you get pythonAutomationRoboProject directory with several files.

Example test cases, test library used by a robo project, and generated results are available also online. Therefore, you do not need to download the project if you are not interested in running it yourself.

<h1>Test cases</h1>
This project contains the below test cases</br>
1. Login into a website</br>
2. Verifying Input Box</br>
3. Selecting Radio buttons and Checking/Unchecking of Checkboxes</br>
4. Selecting Drop Down values</br>
5. Using Implicit wait keyword **set selenium implicit wait** for a Registration Page on a website</br>
6. Command to run only test cases with Tag regression </br>
  
  ```cmd 
  robot --include=regression .\TestCases\CredentialTest.robot
  ```
  &ensp; Command to exclude test cases with Tag regression &ensp; </br>

  ```cmd 
  robot -e regression .\TestCases\Credentials.robot
  ```
  &ensp; Command to run test cases with both Tags i.e sanity and regression </br> 
  ```cmd 
  robot -i sanity -i regression .\TestCases\Credentials.robot
  ```
6. Reading data from a complex Json file and passing the same onto a website</br>

<h1>Python based debugging in Robot Framework</h1>

  Import the DebugLibrary.py file present in this project root folder into your test case</br>
   Use Suite Tear down keyword and a keyword <strong>Teardown Actions</strong> as shown below</br>
    &ensp;<img width="377" alt="image" src="https://github.com/Zahid-Automate/pythonAutomationRoboProject/assets/45691238/22d145a1-e7d0-4932-9a15-e13f11519cb8">
    &ensp;<img width="448" alt="image" src="https://github.com/Zahid-Automate/pythonAutomationRoboProject/assets/45691238/8c3a3a36-3822-4b9a-b28a-3d2f26f650c2"></br>

  Make sure to include the <strong>set breakpoint</strong> in your test case to activate the Python Debugger (Pdb)</br>
  <img width="548" alt="image" src="https://github.com/Zahid-Automate/pythonAutomationRoboProject/assets/45691238/5aa5fa91-a3c6-4c1f-9b5a-97a3e29d0789">

  Use the below command in the terminal, to run the test cases in Debug Mode</br>
  ```cmd
  $Env:ROBOT_DEBUG = 'TRUE'; robot  .\TestCases\ReadingDataFromJson.robot
  ```
Set the value of the variable to the desired value at run time 
  ```cmd
 BuiltIn().set_local_variable("{firstName}", "Superman") 

 ```
In order to get the value of the variables during run time use below command in Pdb
  ```cmd
 BuiltIn().get_variable_value("${firstName}")
 ```
Screen-shot of how the value will look like after runtime modification of the variable
  <img width="779" alt="image" src="https://github.com/Zahid-Automate/pythonAutomationRoboProject/assets/45691238/3d65a153-0257-4169-818a-d1f15ad6dd7d">

&ensp;<img width="787" alt="image" src="https://github.com/Zahid-Automate/pythonAutomationRoboProject/assets/45691238/43497dcd-2eb3-42aa-aadf-42651d260217">

When <strong>pause for debug</strong> keyword is used , we get to see the below pop-up, where the execution gets stopped </br>
<img width="228" alt="image" src="https://github.com/Zahid-Automate/pythonAutomationRoboProject/assets/45691238/8a732ad6-c549-46bd-bac9-6bb71462e84c">



<h1>Generated results</h1>
After running tests, you will get report and log in HTML format. Example files are also visible online in case you are not interested in running the demo yourself. Notice that one of the test has failed on purpose to show how failures look like.

</br>[FirstReport.html](https://raw.githack.com/Zahid-Automate/pythonAutomationRoboProject/master/report.html)</br>
[Firstlog.html](https://raw.githack.com/Zahid-Automate/pythonAutomationRoboProject/master/log.html)<br>

<br>[ReportWithFailures.html](https://rawcdn.githack.com/Zahid-Automate/pythonAutomationRoboProject/2cb204fd0e407d755137fdffee0f650289556658/report.html)</br>
[LogWithFailures.html](https://rawcdn.githack.com/Zahid-Automate/pythonAutomationRoboProject/2cb204fd0e407d755137fdffee0f650289556658/log.html)</br>
<h3>Preconditions</h3>

A precondition for running the tests is having [Robot Framework](https://robotframework.org/) installed. It is most commonly used on [Python](https://www.python.org/) but it works also with Jython (JVM) and IronPython (.NET). Robot Framework [installation instructions](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst) cover installation procedure in detail. People already familiar with installing Python packages and having pip package manager installed, can simply run the following command:

```
pip install robotframework  
```

</br> Robot Framework 3.0 and newer support Python 3 in addition to Python 2.









