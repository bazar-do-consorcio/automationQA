*** Settings ***
Resource    ../Base.robot
Resource    ./keywords/bpm_api.robot

*** Variables ***

${BPM_DIR}    ./tests/service/bpm
${BPM_JSON}    ${BPM_DIR}/constains/json
${BPM_SCHEMAS}    ${BPM_DIR}/constains/schemas

&{TOKEN}    ByExtrato=804fcc40740c2dbb82ad71432f6e08cc15958011ea6c2d7dd83e9f606045a8a1

&{BODY}    ByInsertQuotaPorto=${BPM_JSON}/api_porto.json

&{URI}    ByInsertQuotaPorto=/object/create
