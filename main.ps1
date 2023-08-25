#カレントディレクトリをこのファイルが格納されているフォルダに変更
$path = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $path
#各種ファイルを読み込む
.".\lib\lib.ps1"
.".\conf\connectString.ps1"

$TestObject = New-Object connectString
$TestObject

#いかに処理を記述する
$ret = sqlcmd.exe -S . -E -i sample.sql 
$ret