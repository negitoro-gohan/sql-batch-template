class Log
{
    [string] $filename;

    Log([string]$filename)
    {
        $this.filename = $filename;
    }

    [string] outputLog([string] $mes)
    {
        $s = $now.ToString("yyyy/MM/dd HH:mm:ss.fff") + " " + $mes
        Write-Output $s | Out-File -FilePath $this.fileName -Encoding Default -append
        Return $s
    }
}

