




$target="MyLib.pine"





##################################################
Remove-Item $target
##################################################
Get-Content MyLib-000.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
##################################################
Get-Content MyLib-001VAR.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
##################################################
Get-Content MyLib-002ENUM-CROSS.pine     -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-002ENUM-PLUSMINUS.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
##################################################
Get-Content MyLib-003FUNC-MATH-ABSOLUTE.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-003FUNC-MATH-AVERAGE.pine  -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-003FUNC-MATH-HIGHEST.pine  -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-003FUNC-MATH-LOWEST.pine   -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-003FUNC-MATH-Maximum.pine  -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-003FUNC-MATH-Minimum.pine  -Encoding UTF8 | Add-Content $target -Encoding UTF8
##################################################
Get-Content MyLib-004FUNC-DMI-DI.pine    -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-004FUNC-DMI-DM.pine    -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-004FUNC-DMI-DMAVG.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-004FUNC-DMI-DX.pine    -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-004FUNC-DMI-DXAVG.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-004FUNC-DMI-TR.pine    -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-004FUNC-DMI-TRAVG.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
##################################################
Get-Content MyLib-004FUNC-KDJ-D.pine   -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-004FUNC-KDJ-J.pine   -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-004FUNC-KDJ-K.pine   -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-004FUNC-KDJ-RSV.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
##################################################
Get-Content MyLib-004FUNC-MA-EMA.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-004FUNC-MA-SMA.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-004FUNC-MA-WMA.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
##################################################
Get-Content MyLIb-004FUNC-MACD-DEA.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLIb-004FUNC-MACD-DIF.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLIb-004FUNC-MACD-OSC.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
##################################################
Get-Content MyLib-004FUNC-VOL-BUY.pine  -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-004FUNC-VOL-SELL.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
##################################################
Get-Content MyLib-999TYPE-DMI-000.pine        -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-999TYPE-DMI-100PLUSDI.pine  -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-999TYPE-DMI-200MINUSDI.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-999TYPE-DMI-300ADX.pine     -Encoding UTF8 | Add-Content $target -Encoding UTF8
##################################################
Get-Content MyLib-999TYPE-KDJ-000.pine      -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-999TYPE-KDJ-100K.pine     -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-999TYPE-KDJ-200D.pine     -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-999TYPE-KDJ-300J.pine     -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-999TYPE-KDJ-999CROSS.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
##################################################
Get-Content MyLib-999TYPE-MACD-000.pine      -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-999TYPE-MACD-100DIF.pine   -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-999TYPE-MACD-200DEA.pine   -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-999TYPE-MACD-300OSC.pine   -Encoding UTF8 | Add-Content $target -Encoding UTF8
Get-Content MyLib-999TYPE-MACD-999CROSS.pine -Encoding UTF8 | Add-Content $target -Encoding UTF8
##################################################
pause