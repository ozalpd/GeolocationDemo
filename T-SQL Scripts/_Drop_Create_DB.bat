@echo .
@echo Deleting Database...
@sqlcmd -S ".\SqlExpress" -d Master -E -Q "IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'GeoDnmDB') DROP DATABASE [GeoDnmDB]"

@echo .
@call _CreateDB.bat
