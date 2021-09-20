*** Settings ***
Library           SeleniumLibrary
Resource    ../Resources/resource.robot

***Variables***
${Browser}  chrome
${url}  https://yyyyyyy.com/
${securitypassword}  yyyyyy
${email}    rrrrrrrrrr@gmail.com
${password}    Acccccccccc@123
${PIN}      12345
${cvvvalue}      123

***Test Cases***
Single Vehicle Taxable

    OPEN MY BROWSER     ${url}  ${Browser}
    ENTER SECURITYPASSWORD  ${securitypassword}
    CLICK SP_SUBMIT
    ENTER EMAILID    ${email}
    ENTER PASSWORD  ${password}
    CLICK SIGNIN
    CLICK START_NEWRETURN
    CLICK SV_READYRETURN
    CLICK SV_SHOW_RETURN
    sleep   3
    CLICK SV_RR_REVIEW & CONTINUE
    sleep   3
    CLICK SV_STEP2 SAVE
    sleep   3
    CLICK SV_AF_CONTINUE
    sleep   3
    ENTER SV_EXISTINGCARD_CVV     ${cvvvalue}
    sleep   3
    CLICK SV_PAY_CONTINUE
    sleep   3
    ENTER SV_TPIN    ${PIN}
    #click transmit
    
   
    
    