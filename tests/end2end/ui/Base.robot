*** Settings ***
Resource    ../Base.robot
Resource    pages/home_page.robot
Resource    pages/register_page.robot
Resource    pages/user_page.robot
Resource    pages/login_page.robot
Resource    pages/operator_page.robot

*** Variables ***
${URL_USER}    https://staging.bazardoconsorcio.com.br/
${URL_OPERATOR}    https://staging.bazardoconsorcio.com.br/users/sign_in