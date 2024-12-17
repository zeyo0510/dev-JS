$source = @(
  ("MyLib-000.pine")
, ("MyLib-001VAR.pine")
, ("MyLib-002ENUM-CROSS.pine")
, ("MyLib-002ENUM-SIGNED.pine")
, ("MyLib-003FUNC-MATH-ABSOLUTE.pine")
, ("MyLib-003FUNC-MATH-AVERAGE.pine")
, ("MyLib-003FUNC-MATH-HIGHEST.pine")
, ("MyLib-003FUNC-MATH-LOWEST.pine")
, ("MyLib-003FUNC-MATH-Maximum.pine")
, ("MyLib-003FUNC-MATH-Minimum.pine")
, ("MyLib-004FUNC-DMI-DI.pine")
, ("MyLib-004FUNC-DMI-DM.pine")
, ("MyLib-004FUNC-DMI-DMAVG.pine")
, ("MyLib-004FUNC-DMI-DX.pine")
, ("MyLib-004FUNC-DMI-DXAVG.pine")
, ("MyLib-004FUNC-DMI-TR.pine")
, ("MyLib-004FUNC-DMI-TRAVG.pine")
, ("MyLib-004FUNC-KDJ-D.pine")
, ("MyLib-004FUNC-KDJ-J.pine")
, ("MyLib-004FUNC-KDJ-K.pine")
, ("MyLib-004FUNC-KDJ-RSV.pine")
, ("MyLib-004FUNC-MA-EMA.pine")
, ("MyLib-004FUNC-MA-SMA.pine")
, ("MyLib-004FUNC-MA-WMA.pine")
, ("MyLIb-004FUNC-MACD-DEA.pine")
, ("MyLIb-004FUNC-MACD-DIF.pine")
, ("MyLIb-004FUNC-MACD-OSC.pine")
, ("MyLib-004FUNC-VOL-BUY.pine")
, ("MyLib-004FUNC-VOL-SELL.pine")
, ("MyLib-999TYPE-DMI-000.pine")
, ("MyLib-999TYPE-DMI-100POSITIVEDI.pine")
, ("MyLib-999TYPE-DMI-200NEGATIVEDI.pine")
, ("MyLib-999TYPE-DMI-300ADX.pine")
, ("MyLib-999TYPE-KDJ-000.pine")
, ("MyLib-999TYPE-KDJ-100K.pine")
, ("MyLib-999TYPE-KDJ-200D.pine")
, ("MyLib-999TYPE-KDJ-300J.pine")
, ("MyLib-999TYPE-KDJ-999CROSS.pine")
, ("MyLib-999TYPE-MACD-000.pine")
, ("MyLib-999TYPE-MACD-100DIF.pine")
, ("MyLib-999TYPE-MACD-200DEA.pine")
, ("MyLib-999TYPE-MACD-300OSC.pine")
, ("MyLib-999TYPE-MACD-999CROSS.pine")
)
##################################################
$target = "MyLib.pine"
##################################################
if (Test-Path $target)
{
  Remove-Item $target
}
##################################################
$source | ForEach-Object {
  Write-Host "正在處理 $_"
  Get-Content $_ -Encoding UTF8 | Add-Content $target -Encoding UTF8
}
##################################################
pause