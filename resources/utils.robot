*** Settings ***
Library    ../file.py
Library    OperatingSystem
Library    json
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections
Library    ../robotEnv/lib/site-packages/robot/libraries/DateTime.py

*** Keywords ***

Setup Screenshots
    Set Test Variable    ${number}    1
    ${fileExists}        File Exists    selenium-screenshot-${number}.png

    WHILE    ${fileExists} == True
        Remove File    selenium-screenshot-${number}.png
        ${number}   Evaluate  ${number}+1  
        ${fileExists}        File Exists    selenium-screenshot-${number}.png
    END

Compare Json    ${json}    ${schema}
    ${jsons}    To Json    ${json}
    Validate Json By Schema File    json_object    path_to_schema

Get Last Array Json    
    [Arguments]    ${json}

    ${objects}  Convert String to JSON    ${json}
    ${length}   Get length  ${objects}

    [Return]    ${length}-1


Generate uuid quota
    ${uuid}    Get Current Date    result_format=%Y%m%d-%H%M%S

    [Return]    ${uuid}

Generate dateTime
    ${dateTime}    Get Current Date    result_format=%Y%m%dT%H%M%S

    [Return]    ${dateTime}

Generate dateTime Format
    ${dateTime}    Get Current Date    result_format=%Y-%m-%dT%H:%M:%S

    [Return]    ${dateTime}

Generate Boleto
    ${data}    Get Current Date    result_format=%Y%m%d
    ${hora}    Get Current Date    result_format=%H%M%S
    ${milisegundo}     Get Current Date    result_format=%f

    [Return]    001 9 05009 5 00${data} 9 0000${hora} 4 3 3737 0000${milisegundo}

Locate object    
    [Arguments]    ${array}
    ...            ${field}
    ...            ${value}

    ${length}    Get Length    ${array.json()}
    ${position}    Set Variable    0
    ${object}    Set Variable    ""      

    WHILE    ${position} < ${length}
    ${objects}=    Set Variable    ${array.json()}[${position}]
    Log Many   ${objects}[${field}]    ${value}
    
        IF    '${objects}[${field}]' == '${value}'
            ${object}=    Set Variable  ${objects}    
        END
        
        ${position}=    Evaluate    ${position} + 1

    END

    IF    ${object} == ""

        Fail    msg="Object not found"

    END

Locate object with Return
    [Arguments]    ${array}
    ...            ${field}
    ...            ${value}

    ${length}    Get Length    ${array.json()}
    ${position}    Set Variable    0
    ${object}    Set Variable    ""      

    WHILE    ${position} < ${length}
    ${objects}=    Set Variable    ${array.json()}[${position}]
    
        IF    '${objects}[${field}]' == '${value}'
            ${object}=    Set Variable  ${objects}    
        END
        
        ${position}=    Evaluate    ${position} + 1

    END

    IF    ${object} == ""

        Fail    msg="Object not found"

    END

    [Return]    ${object}
