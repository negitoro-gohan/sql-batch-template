#�J�����g�f�B���N�g�������̃t�@�C�����i�[����Ă���t�H���_�ɕύX
$path = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $path
#�e��t�@�C����ǂݍ���
.".\lib\lib.ps1"
.".\conf\connectString.ps1"

$TestObject = New-Object connectString
$TestObject

#�����ɏ������L�q����
$ret = sqlcmd.exe -S . -E -i sample.sql 
$ret