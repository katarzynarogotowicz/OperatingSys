#Ćwiczenie2
#
#
#Stworzyć ściężkę
#
#Stworzyć w ścieżke kilka plików
#
#Sprawdzić czy ścieżka i pliki zostały stworzone
#
#Posprzątać!(Teardown)

*** Settings ***
Library  OperatingSystem

*** Variables ***
${file1}   A.txt
${file2}   B.txt

*** Test Cases ***
Test1
   Create files and the path
   Check path and file exist
   Delete files in path
   [Teardown]

*** Keywords ***
Create test variables
    ${path}       Join Path      C:\Users\Public  users  test
    ${tempdir}    Join Path	     ${path}	   ${file1}     #to tylko wartość
    Set test variable            ${path}
    Set test variable            ${tempdir}
Create files and the path
    Create test variables
    Create Directory             ${path}
    Create File                  ${tempdir}    ${EMPTY}
Check path and file exist
    Directory Should Exist       ${path}
Delete files in path
    Remove files                 ${tempdir}
    Remove Directory             ${path}