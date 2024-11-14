*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Can set value higher
    Go To  ${HOME_URL}
    Input Text  value  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa

Can set value lower
    Go To  ${HOME_URL}
    Input Text  value  5
    Click Button  aseta
    Page Should Contain  nappia painettu 5 kertaa