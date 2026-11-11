*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When value is set counter has the set value
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  0
    Fill Text  input[name="value"]  5
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 5 kertaa

