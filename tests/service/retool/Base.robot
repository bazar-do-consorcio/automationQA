*** Settings ***
Resource    ../Base.robot
Resource    ./keywords/retool.robot
Library    Collections

*** Variables ***

${RETOOL_DIR}    ./tests/service/retool
${RETOOL_JSONS}    ${RETOOL_DIR}/constains/json
${RETOOL_SCHEMAS}    ${RETOOL_DIR}/constains/schemas

&{BODY}    ByPostInstallment=${RETOOL_JSONS}/post_installment.json
...        ByPatchInstallment=${RETOOL_JSONS}/patch_installment.json

${TOKEN}      1NrcncqyUG9oJ5hShJq0aafHfWcBWqFdPVBSpee6

&{URI}      ByQuotas=https://hexa.bazar-sandbox.technology/quotas
...         ByQuota=https://hexa.bazar-sandbox.technology/quota
...         ByGetInstallment=https://hexa.bazar-sandbox.technology/installment
...         ByPostInstallment=https://hexa.bazar-sandbox.technology/installment
...         ByPatchInstallment=https://hexa.bazar-sandbox.technology/installment