:: linux
set GOARCH=amd64
SET GOOS=linux
@REM go tool dist install -v %GOROOT%\pkg
@REM go install -v -a std
go build athena.go

:: Windows
set GOARCH=amd64
SET GOOS=windows
@REM go build main.go