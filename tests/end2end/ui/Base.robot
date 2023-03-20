*** Settings ***
Library    SeleniumLibrary
Resource    ../Base.robot
Resource    pages/home_page.robot
Resource    pages/cadastro_page.robot
Resource    pages/user_page.robot
Resource    pages/login_page.robot


*** Variables ***
${BASE_URL}    https://staging.bazardoconsorcio.com.br/