function outputLog($logString){

  $Now = Get-Date

  # Log 出力文字列に時刻を付加(YYYY/MM/DD HH:MM:SS.MMM $logString)
  $Log = $Now.ToString("yyyy/MM/dd HH:mm:ss.fff") + " "
  $Log += $logString

  # echo させるために出力したログを戻す
  Return $Log
}
