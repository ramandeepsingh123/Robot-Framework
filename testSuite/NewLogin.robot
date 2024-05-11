*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TestHRM
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    name=username    timeout=30s
    LoginKW
    #Wait Until Element Is Visible    xpath =//li[@class='--active oxd-userdropdown']
    #Wait Until Element Is Visible    xpath =//span[@class='oxd-userdropdown-tab']
    #Click Element    xpath =//span[@class='oxd-userdropdown-tab']
    #Click Link    href="/web/index.php/auth/logout"
    Sleep    5s
*** Variables ***
${URL}              https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
@{Credentials}      Admin   Admin123
&{LoginData}         Username = Admin  Password=admin123

*** Keywords ***
LoginKW
    Input Text    name=username    ${Credentials}[0]
    Input Password    name=password    ${LoginData}[Password]
    Click Button    xpath=//button[@type='submit']

