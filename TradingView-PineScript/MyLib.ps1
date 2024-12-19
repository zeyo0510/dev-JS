$source = @(
  ("MyLib-000.pine.part")
, ("MyLib-001VAR.pine.part")
, ("MyLib-002ENUM-CROSS.pine.part")
, ("MyLib-002ENUM-SIGNED.pine.part")
, ("MyLib-003FUNC-MATH-ABSOLUTE.pine.part")
, ("MyLib-003FUNC-MATH-AVERAGE.pine.part")
, ("MyLib-003FUNC-MATH-HIGHEST.pine.part")
, ("MyLib-003FUNC-MATH-LOWEST.pine.part")
, ("MyLib-003FUNC-MATH-Maximum.pine.part")
, ("MyLib-003FUNC-MATH-Minimum.pine.part")
, ("MyLib-004FUNC-DMI-DI.pine.part")
, ("MyLib-004FUNC-DMI-DM.pine.part")
, ("MyLib-004FUNC-DMI-DMAVG.pine.part")
, ("MyLib-004FUNC-DMI-DX.pine.part")
, ("MyLib-004FUNC-DMI-DXAVG.pine.part")
, ("MyLib-004FUNC-DMI-TR.pine.part")
, ("MyLib-004FUNC-DMI-TRAVG.pine.part")
, ("MyLib-004FUNC-KDJ-D.pine.part")
, ("MyLib-004FUNC-KDJ-J.pine.part")
, ("MyLib-004FUNC-KDJ-K.pine.part")
, ("MyLib-004FUNC-KDJ-RSV.pine.part")
, ("MyLib-004FUNC-MA-EMA.pine.part")
, ("MyLib-004FUNC-MA-SMA.pine.part")
, ("MyLib-004FUNC-MA-WMA.pine.part")
, ("MyLIb-004FUNC-MACD-DEA.pine.part")
, ("MyLIb-004FUNC-MACD-DIF.pine.part")
, ("MyLIb-004FUNC-MACD-OSC.pine.part")
, ("MyLib-004FUNC-VOL-BUY.pine.part")
, ("MyLib-004FUNC-VOL-SELL.pine.part")
, ("MyLib-999TYPE-DMI-000.pine.part")
, ("MyLib-999TYPE-DMI-100POSITIVEDI.pine.part")
, ("MyLib-999TYPE-DMI-200NEGATIVEDI.pine.part")
, ("MyLib-999TYPE-DMI-300ADX.pine.part")
, ("MyLib-999TYPE-KDJ-000.pine.part")
, ("MyLib-999TYPE-KDJ-100K.pine.part")
, ("MyLib-999TYPE-KDJ-200D.pine.part")
, ("MyLib-999TYPE-KDJ-300J.pine.part")
, ("MyLib-999TYPE-KDJ-999CROSS.pine.part")
, ("MyLib-999TYPE-MACD-000.pine.part")
, ("MyLib-999TYPE-MACD-100DIF.pine.part")
, ("MyLib-999TYPE-MACD-200DEA.pine.part")
, ("MyLib-999TYPE-MACD-300OSC.pine.part")
, ("MyLib-999TYPE-MACD-999CROSS.pine.part")
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