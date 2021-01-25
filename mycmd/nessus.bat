@IF "%~1"=="" GOTO STATUS
@IF "%~1"=="start" GOTO START
@IF "%~1"=="stop" GOTO STOP
@IF "%~1"=="open" GOTO OPEN

:STATUS
@sc query "Tenable Nessus"
@GOTO DONE

:START
@net start "Tenable Nessus"
@start chrome "https://nessus:8834"
@GOTO DONE

:STOP
@net stop "Tenable Nessus"
@GOTO DONE

:OPEN
@start chrome "https://nessus:8834" --new-window
@GOTO DONE

:DONE