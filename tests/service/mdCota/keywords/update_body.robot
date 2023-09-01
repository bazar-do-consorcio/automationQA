*** Settings ***
Resource    ../Base.robot

*** Keywords ***

Update Body by mdCota
   [Arguments]    ${body}
    ...            ${qtd}
    ...            ${type}
   
   ${count}    Set Variable    1
   ${quotas}=    Create List

   IF    '${type}' != 'ByDataSensitive'
       ${uuid}=    Create List
   END

   WHILE    ${count} <= ${qtd}
    
      IF    '${type}' != 'ByDataSensitive'
          ${data}=    Gerar UUID aleatório
          Append To List    ${uuid}    ${data}
          Set Global Variable    ${uuid}  
      END

      ${idx}=    Evaluate    ${count} - 1

      ${body}      Update Value To Json    ${body}    $.referenceId    ${uuid}[${idx}]

      Append To List     ${quotas}      ${body}

      IF    '${type}' == 'ByQuotasMD' or '${type}' == 'ByDataSensitive'
                  
      ${group}=    Gerar número aleatório    digits=5
      ${number}=    Gerar número aleatório    digits=3
      ${proposedNumber}=    Gerar número aleatório    digits=50
      ${name}=    Gerar nome aleatório
      ${cpf}=    Gerar cpf sem pontuação
      ${email}=    Gerar email aleatório
      Set Global Variable    ${email}

      ${body}      Update Value To Json    ${body}    $.group    ${group}
      ${body}      Update Value To Json    ${body}    $.number    ${number}
      ${body}      Update Value To Json    ${body}    $.proposedNumber    ${proposedNumber}
      ${body}      Update Value To Json    ${body}    $.ownerName    ${name}
      ${body}      Update Value To Json    ${body}    $.ownerDocument    ${cpf}
      ${body}      Update Value To Json    ${body}    $.ownerEmail    ${email}
      
         
      END
      
      ${count}=    Evaluate    ${count} + 1

   END

   ${list}    Set Variable    ${quotas}
   
   ${template}     Update Value To Json    ${template}    $.quotas     ${list} 

   IF    '${type}' == 'ByPricingQuery'
       ${template}     Update Value To Json    ${template}    $.endpoint_generator     POST /pricingQuery
   ELSE
       ${template}     Update Value To Json    ${template}    $.endpoint_generator     POST /quotas
   END  
    
   [Return]    ${template}

