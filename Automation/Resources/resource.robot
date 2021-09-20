*** Settings ***
Library           SeleniumLibrary
Variables   ../PageObjects/pom.py

*** Keywords ***
OPEN MY BROWSER
    [Arguments]     ${url}  ${Browser}
    Open Browser     ${url}  ${Browser}
    Maximize Browser Window

ENTER SECURITYPASSWORD
    [Arguments]     ${securitypassword}
    Input Text  ${securitypassword_text}    ${securitypassword}

CLICK SP_SUBMIT
    click element   ${submit_button}

ENTER EMAILID
    [Arguments]     ${email}
    Input Text  ${email_text}    ${email}

ENTER PASSWORD    
    [Arguments]     ${password}
    Input Text      ${password_text}    ${password}

CLICK SIGNIN
    click element   ${signin_button}  

CLICK START_NEWRETURN
    click element   ${new_button}

CREAT SINGLEVEHICLE
    click element   ${single_button}

SELECT SV_TY
    select from list by value   ${taxyear}     2021

SELECT SV_FUM 
    select from list by value   ${fum}     08-2021

ENTER SV_VIN
    [Arguments]     ${VIN}
    Input Text      ${vin_number}   ${VIN}

SELECT SV_WEIGHTCATEGORY
    select from list by value   ${weight}     2

SELECT IPEFTPS
    click element       ${irspayment}

CLICK ACCEPT_EFTPS
    click element       ${agree}

CLICK SV_SAVE & CONTINUE
    click element       ${save}

CLICK SV_STEP2 SAVE
    click element       ${next}

CLICK SV_CC_PAYMENT
    click element       ${credit}

CLICK SV_SKU_CONTINUE
    click element       ${creditcontinue}

ENTER SV_EXISTINGCARD_CVV
    [Arguments]     ${cvvvalue}
    Input Text      ${cvv}      ${cvvvalue}

CLICK SV_PAY_CONTINUE
    click element       ${cvvcontinue}

ENTER SV_TPIN
    [Arguments]     ${PIN}    
    Input Text      ${enter_pin}    ${PIN}

CLICK SV_TRANSMIT
    click element       ${transmit_button}

CLICK SV_SUSPENDED
    click element       ${suspended}

ENTER SV_CARDNAME
    [Arguments]     ${cardname}
    Input Text      ${cname}    ${cardname}

ENTER SV_CARDNUMBER
    [Arguments]     ${cardnumber}
    Input Text      ${cnumber}  ${cardnumber}

SELECT SV_CARDEXPIRY_MONTH
    select from list by value   ${expiry_month}     03

SELECT SV_CARDEXPIRY_YEAR
    select from list by value   ${expiry_year}     2023

ENTER SV_NEWCARD_CVV
    [Arguments]     ${cardcvv}  
    Input Text      ${enter_cvv}    ${cardcvv}

CLICK SV_ADDCARD
    click element       ${card_continue}

CLICK SV_AF_POSTALMAIL
    click element       ${postal_mail}

CLICK SV_AF_CONTINUE
    click element       ${postal_continue}

CLICK SV_PYSUSPENDED
    click element       ${priorsus}

CLICK SV_MILEAGEDEXCEEDED
    click element       ${mileageexceed}

ENTER SV_MEVIN
    [Arguments]     ${MVIN}
    Input Text      ${mileageVIN}   ${MVIN}

CLICK SV_READYRETURN
    click element       ${ready_button}

CLICK SV_SHOW_RETURN
    click element       ${show_button}

CLICK SV_RR_REVIEW & CONTINUE 
    click element       ${reviewcontinue_button}

click auditpage continue
    click element       ${au_continue_buton}

click business credit
    click element       ${businesscredit_button}

click featurespage continue
    click element       ${features_continue}

Enter ready return cardcvv
    [Arguments]     ${readycv}
    Input Text      ${ready_cvv}    ${readycv}