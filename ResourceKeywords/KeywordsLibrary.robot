*** Settings ***
Library    SeleniumLibrary
Library    ../TestData/ReadExcelData.py



*** Keywords ***

#Opening Browser and maximize window
Open Browser and Maximize
    [Arguments]    ${Url}    ${BName}
    open browser    ${Url}    ${BName}
    maximize browser window

#Entering data
Enter Data in text fields
    [Arguments]    ${locator}   ${value}
    wait until page contains element  ${locator}
    input text     ${locator}   ${value}
    log to console    Data entered in the text box, where the locator is ${locator}

#Read Number of rows from the excel file
Read Number of Rows
    [Arguments]    ${sheetname}
    ${maxr}=  fetch_number_of_rows    ${sheetname}
    [Return]    ${maxr}


# Read Excel Cell Data
Read Excel Cell Data
    [Arguments]    ${sheetname}    ${row}    ${cell}
    ${celldata}=    fetch_cell_data  ${sheetname}    ${row}    ${cell}
    [Return]    ${celldata}











