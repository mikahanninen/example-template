*** Settings ***
Documentation       Template for Robot Framework Robot

Library             DummyLibrary
Library             RPA.FileSystem
Resource            keywords.robot
Variables           variables.py


*** Tasks ***
Example task
    [Documentation]    Accessing keywords from different sources

    # Call local keyword
    Log variables with WARN level
    # Call keyword from resource file
    Log Today In RF
    # Call a keyword from local library
    Log Today In Python
    # Call a library keyword from dependency package
    ${files} =    List Files In Directory    ${CURDIR}
    Log    Done.


*** Keywords ***
Log variables with WARN level
    Log Variables    WARN
