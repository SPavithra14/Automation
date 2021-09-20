*** Settings ***
Library           SeleniumLibrary
Resource    ../Resources/resource.robot

***Variables***
${Browser}  chrome
${url}  https://yyyyyy.com/
${securitypassword}  yyyyyyyy
${email}    yyyyyy@gmail.com
${password}    Xcccccccc@123
${VIN}      123456F4901204567
${cvvvalue}     123
${PIN}      12345
${cardname}     xxxx
${cardnumber}       41111111111111111
${cardcvv}      123
***Test Cases***
Single Vehicle Taxable

    OPEN MY BROWSER     ${url}  ${Browser}
    ENTER SECURITYPASSWORD  ${securitypassword}
    CLICK SP_SUBMIT
    ENTER EMAILID    ${email}
    ENTER PASSWORD  ${password}
    CLICK SIGNIN
    CLICK START_NEWRETURN
    CREAT SINGLEVEHICLE
    SELECT SV_TY
    SELECT SV_FUM
    ENTER SV_VIN       ${VIN}
    SELECT SV_WEIGHTCATEGORY
    SELECT IPEFTPS
    CLICK ACCEPT_EFTPS
    CLICK SV_SAVE & CONTINUE
    CLICK SV_STEP2 SAVE
    CLICK SV_AF_POSTALMAIL
    CLICK SV_AF_CONTINUE
    ENTER SV_CARDNAME     ${cardname}
    ENTER SV_CARDNUMBER        ${cardnumber}
    SELECT SV_CARDEXPIRY_MONTH
    SELECT SV_CARDEXPIRY_YEAR
    ENTER SV_NEWCARD_CVV        ${cardcvv} 
    CLICK SV_ADDCARD
    ENTER SV_TPIN       ${PIN}
    CLICK SV_TRANSMIT
    
   
    
    