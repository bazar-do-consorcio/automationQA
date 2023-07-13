*** Settings ***
Resource    ../Base.robot
Resource    keywords/retool_keywords.robot
Library    Collections

*** Variables ***

${RETOOL_DIR}    ./tests/service/retool
${RETOOL_JSONS}    ${RETOOL_DIR}/constains/json
${RETOOL_SCHEMAS}    ${RETOOL_DIR}/constains/schemas

${cota_adm}    30538845SANTANDER

&{BODY}    ByPostInstallment=${RETOOL_JSONS}/post_installment.json
...        ByPatchInstallment=${RETOOL_JSONS}/patch_installment.json
...        ByPatchReactivation=${RETOOL_JSONS}/patch_reactivation.json
...        ByPatchAssetChanges=${RETOOL_JSONS}/patch_assetChanges.json
...        ByPatchPayment=${RETOOL_JSONS}/patch_payment.json
...        ByPostPayment=${RETOOL_JSONS}/post_payment.json
...        ByPlanContemplation=${RETOOL_JSONS}/post_planContemplation.json
...        ByPlanContemplationCarrego=${RETOOL_JSONS}/post_planContemplationCarrego.json
...        ByPatchBids=${RETOOL_JSONS}/patch_bids.json

${TOKEN}      1NrcncqyUG9oJ5hShJq0aafHfWcBWqFdPVBSpee6

&{URI}      ByQuotas=https://hexa.bazar-sandbox.technology/quotas?page=0&size=10000
...         ByQuotasWithCotaAdm=https://hexa.bazar-sandbox.technology/quotas/${cota_adm}
...         ByQuotasWithoutInstallment=https://hexa.bazar-sandbox.technology/quotas/without-installment
...         ByGetInstallment=https://hexa.bazar-sandbox.technology/installment
...         ByPostInstallment=https://hexa.bazar-sandbox.technology/installment
...         ByPatchInstallment=https://hexa.bazar-sandbox.technology/installment
...         ByGetReactivation=https://hexa.bazar-sandbox.technology/reactivation
...         ByPatchReactivation=https://hexa.bazar-sandbox.technology/reactivation
...         ByGetAssetChanges=https://hexa.bazar-sandbox.technology/asset_changes
...         ByPatchAssetChanges=https://hexa.bazar-sandbox.technology/quotas
...         ByGetPayment=https://hexa.bazar-sandbox.technology/payment
...         ByPatchPayment=https://hexa.bazar-sandbox.technology/payment
...         ByPostPayment=https://hexa.bazar-sandbox.technology/payment
...         ByPlanContemplation=https://hexa.bazar-sandbox.technology/plan_of_contemplation
...         ByPlanContemplationCarrego=https://hexa.bazar-sandbox.technology/plan_of_contemplation
...         ByGetBids=https://hexa.bazar-sandbox.technology/bids
...         ByPatchBids=https://hexa.bazar-sandbox.technology/bids