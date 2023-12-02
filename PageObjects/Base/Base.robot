*** Settings ***
Library           AppiumLibrary

*** Variables ***
${APPIUM_SERVER}    http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${DEVICE_NAME}    emulator-5554
${APP_PACKAGE}    com.example.myapplication
${APP_ACTIVITY}    .MainActivity

*** Keywords ***
Open Flight Application
    Open Application    remote_url=${APPIUM_SERVER}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}

Close Flight Application
    Close Application
