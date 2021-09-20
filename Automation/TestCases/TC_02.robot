*** Settings ***
Library           SeleniumLibrary
Resource    ../Resources/resource.robot

***Variables***
${Browser}  chrome
${url}  https://yyyyyyyyy.com/
${securitypassword}  yyyyyy
${email}    yyyyyyy@gamil.com
${password}     Aaaaaaaaaa@123
${VIN}      123Vd6s4H81204567
${cvvvalue}     123
${PIN}      12345
${MVIN}     12345567890987654
***Test Cases***
Single Vehicle Taxable

    OPEN MY BROWSER     ${url}  ${Browser}
    ENTER SECURITYPASSWORD  ${securitypassword}
    CLICK SP_SUBMIT
    ENTER EMAILID     ${email}
    ENTER PASSWORD    ${password}
    CLICK SIGNIN
    CLICK START_NEWRETURN
    CREAT SINGLEVEHICLE
    SELECT SV_TY
    SELECT SV_FUM
    ENTER SV_VIN       ${VIN}
    CLICK SV_SUSPENDED
    CLICK SV_PYSUSPENDED
    CLICK SV_MILEAGEDEXCEEDED
    ENTER SV_MEVIN      ${MVIN}
    CLICK SV_SAVE & CONTINUE
    CLICK SV_STEP2 SAVE
    CLICK SV_CC_PAYMENT
    CLICK SV_SKU_CONTINUE
    ENTER SV_EXISTINGCARD_CVV     ${cvvvalue}
    CLICK SV_PAY_CONTINUE
    ENTER SV_TPIN      ${PIN}
    CLICK SV_TRANSMIT