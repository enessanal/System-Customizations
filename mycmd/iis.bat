@set current_cd=%cd%
@cd C:\Users\%username%\Documents\IIS-8.3\
@java -jar iis_shortname_scanner.jar
@cd %current_cd%