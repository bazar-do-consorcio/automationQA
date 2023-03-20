*** Settings ***
Library    ../file.py
Library    OperatingSystem

*** Keywords ***

Setup Screenshots
    Set Test Variable    ${number}    1
    ${fileExists}        File Exists    selenium-screenshot-${number}.png

    WHILE    ${fileExists} == True
        Remove File    selenium-screenshot-${number}.png
        ${number}   Evaluate  ${number}+1  
        ${fileExists}        File Exists    selenium-screenshot-${number}.png
    END







