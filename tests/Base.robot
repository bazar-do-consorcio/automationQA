*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/accounts.robot
Resource    ../resources/utils.robot

*** Variables ***

${GENERAL_TIMEOUT}    30seconds
${BIG_TIMEOUT}        60seconds