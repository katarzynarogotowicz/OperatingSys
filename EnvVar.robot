*** Settings ***
Library  OperatingSystem

*** Variables ***

*** Test Cases ***
Test1
   Adding environment variable
   Assert variable exist
   Log Environment Variables
   Delete environment variable
   Assert variable not exist

*** Keywords ***
Adding environment variable
    Set Environment Variable  Hi    Hello World
Assert variable exist
    Environment Variable Should Be Set   Hi
Delete environment variable
    Remove Environment Variable  Hi
Assert variable not exist
    Environment Variable Should Not Be Set   Hi