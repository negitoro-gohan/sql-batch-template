#�J�����g�f�B���N�g�������̃t�@�C�����i�[����Ă���t�H���_�ɕύX
$path = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $path
#SQLServer�ڑ�����ǂݍ���
$settings = Get-Content .\setting.json -Raw | ConvertFrom-Json
#�e��t�@�C����ǂݍ���
.".\lib\log.ps1"


[Log] $logs = New-Object Log('log.txt');


#�ȉ��ɏ������L�q����
$ret = sqlcmd -S $settings.server -i .\scripts\sample.sql -h -1

$logs.outputLog($ret)