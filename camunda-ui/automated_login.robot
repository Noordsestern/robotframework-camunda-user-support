*** Settings ***
Library    RPA.Browser.Selenium


*** Tasks ***
Login at Camunda
    [Documentation]    From a user:
    ...    Hi Markus, I would like to write a test case that logs in to Camunda platform. But somehow Robot Framework cannot find
    ...    the input elements on the login page.
    ...
    ...    Solution:
    ...    The page loads too quick. Robot tries to enter the values for username and password before the input fields are available.
    ...    We must wait until the elements are available, for example with the keyword WAIT UNTIL PAGE CONTAINS ELEMENT

    Open Camunda Login Page
    Login at Camunda
    Capture Page Screenshot
    [Teardown]     Close Browser


*** Keywords ***
Open Camunda login page
    Open Available Browser    http://localhost:8080/camunda
    Wait Until Page Contains Element    xpath://input[@placeholder="Username" and @type="text"]

Login at Camunda
    Input Text    xpath://input[@placeholder="Username" and @type="text"]    demo
    Input Password    xpath://input[@placeholder="Password" and @type="password"]     demo
    Click Element    xpath://button[@type="submit"]
    Wait Until Page Contains Element    xpath://a[@title="Camunda Welcome "]