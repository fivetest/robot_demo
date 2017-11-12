*** Settings ***
Library           Selenium2Library

*** Keywords ***
打开Firefox浏览器
    Open Browser    http://localhost/bugfree

输入用户名和密码
    [Arguments]    ${username}    ${password}
    Input Text    id=LoginForm_username    ${username}
    Input Text    id=LoginForm_password    ${password}

点击登录按钮
    click element    id=SubmitLoginBTN

等待3s钟
    sleep    3s

检查页面必须包含
    [Arguments]    ${flag}
    Page Should Contain    ${flag}

关闭浏览器
    Close Browser
