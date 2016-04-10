@echo .
@echo Creating Database...
@sqlcmd -S .\SqlExpress -d Master -E -Q "CREATE DATABASE [GeoDnmDB]"
@echo .


@echo .
@echo .
@echo 1 - Executing GeoDnmDB.sql...
@sqlcmd -S .\SqlExpress -d GeoDnmDB -E -i GeoDnmDB.sql

@pause