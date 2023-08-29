#カレントディレクトリをこのファイルが格納されているフォルダに変更
$path = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $path
#SQLServer接続情報を読み込む
$settings = Get-Content .\setting.json -Raw | ConvertFrom-Json
#各種ファイルを読み込む
.".\lib\log.ps1"


[Log] $logs = New-Object Log('log.txt');


#以下に処理を記述する
$ret = sqlcmd -S $settings.server -i .\scripts\sample.sql -h -1

$logs.outputLog($ret)