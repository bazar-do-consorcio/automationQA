*** Settings ***
Resource    ../Base.robot
Resource    ./keywords/mdCota-mdOferta.robot

*** Variables ***

${MD_DIR}    ./tests/service/mdCota
${MD_JSON}    ${MD_DIR}/constains/json
${MD_SCHEMAS}    ${MD_DIR}/constains/schemas

${TOKEN}    KbiHxEVev14N97i3BGpQD6N7n87mpITZ3vovjlt5

&{BODY}    ByPricingQuery=${MD_JSON}/pricingQuery.json
...        ByQuotasMD=${MD_JSON}/quotas.json
...        templateMdCota=${MD_JSON}/mdCotaBody.json
...        ByDataSensitive=${MD_JSON}/quotas.json

&{URI}    ByPricingQuery=https://lu3ltz9mi6.execute-api.us-east-1.amazonaws.com/sandbox/staging/quota
...       ByQuotasMD=https://lu3ltz9mi6.execute-api.us-east-1.amazonaws.com/sandbox/staging/quota
...       ByDataSensitive=https://lu3ltz9mi6.execute-api.us-east-1.amazonaws.com/sandbox/staging/quota

${QTD_QUOTAS}    5
