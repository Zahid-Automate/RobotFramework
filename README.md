<h1>Robot Framework Demo</h1>
Robot Framework is a generic open source test automation framework. In addition to introducing Robot Framework test data syntax, this demo shows how to execute test cases, how generated reports and logs look like, and how to extend the framework with custom test libraries.

Contents:

<h1>Downloading demo package</h1>
To get the demo, you can either download and extract the latest package from the GitHub or checkout the source code directly. As a result you get RobotDemo directory with several files.

Example test cases, test library used by them, and generated results are available also online. Therefore, you do not need to download the demo if you are not interested in running it yourself.

<h1>Test cases</h1>
This project contains the below test cases</br>
1. Login into a website</br>
2. Verifying Input Box</br>
3. Selecting Radio buttons and Checking/Unchecking of Checkboxes</br>

<h1>Generated results</h1>
After running tests, you will get report and log in HTML format. Example files are also visible online in case you are not interested in running the demo yourself. Notice that one of the test has failed on purpose to show how failures look like.

</br>[report.html](https://raw.githubusercontent.com/Zahid-Automate/pythonAutomationRoboProject/master/report.html)</br>
log.html</br>

<h3>Preconditions</h3>

A precondition for running the tests is having [Robot Framework](https://robotframework.org/) installed. It is most commonly used on [Python](https://www.python.org/) but it works also with Jython (JVM) and IronPython (.NET). Robot Framework [installation instructions](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst) cover installation procedure in detail. People already familiar with installing Python packages and having pip package manager installed, can simply run the following command:

```
pip install robotframework  
```

</br> Robot Framework 3.0 and newer support Python 3 in addition to Python 2.









