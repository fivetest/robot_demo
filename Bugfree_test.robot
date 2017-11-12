*** Settings ***
Library           Selenium2Library
Resource          resources.robot

*** Variables ***
${name}           samren
@{List_fruits}    orange    apple    banana
&{dict_value}     name=zhangsan    age=18

*** Test Cases ***
Login成功_admin
    [Template]    登录操作的公共逻辑
    admin    123456    退出

Login失败_admin密码为空
    [Template]    登录操作的公共逻辑
    admin    ${EMPTY}    不可为空白
    admin    123    不匹配

*** Keywords ***
登录操作的公共逻辑
    [Arguments]    ${username}    ${password}    ${flag}
    打开Firefox浏览器
    输入用户名和密码    ${username}    ${password}
    点击登录按钮
    等待3s钟
    检查页面必须包含    ${flag}
    关闭浏览器
