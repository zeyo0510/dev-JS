Remove-Item merged.txt
##################################################
Get-Content MyLib-000.pine                  -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-001-VAR.pine              -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
##################################################
Get-Content MyLib-002-ENUM-CROSS.pine       -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-002-ENUM-PLUSMINUS.pine   -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-003-MATH-ABSOLUTE.pine    -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-003-MATH-AVERAGE.pine     -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-003-MATH-HIGHEST.pine     -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-003-MATH-LOWEST.pine      -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-003-MATH-Maximum.pine     -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-003-MATH-Minimum.pine     -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
##################################################
Get-Content MyLib-004-MA-EMA.pine           -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-004-MA-SMA.pine           -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-004-MA-WMA.pine           -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
##################################################
Get-Content MyLib-004-VOL-BUY.pine          -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-004-VOL-SELL.pine         -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
##################################################
Get-Content MyLIb-005-FUNC-MACD-DEA.pine    -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLIb-005-FUNC-MACD-DIF.pine    -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLIb-005-FUNC-MACD-OSC.pine    -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
##################################################
Get-Content MyLib-006-FUNC-KDJ-D.pine       -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-006-FUNC-KDJ-J.pine       -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-006-FUNC-KDJ-K.pine       -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-006-FUNC-KDJ-RSV.pine     -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
##################################################
Get-Content MyLib-007-FUNC-DMI-DI.pine      -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-007-FUNC-DMI-DM.pine      -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-007-FUNC-DMI-DMAVG.pine   -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-007-FUNC-DMI-DX.pine      -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-007-FUNC-DMI-DXAVG.pine   -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-007-FUNC-DMI-TR.pine      -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-007-FUNC-DMI-TRAVG.pine   -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
##################################################
Get-Content MyLib-100-TYPE-DMI-ADX.pine     -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-100-TYPE-DMI-MINUSDI.pine -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-100-TYPE-DMI-PLUSDI.pine  -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-100-TYPE-DMI.pine         -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
##################################################
Get-Content MyLib-100-TYPE-KDJ-CROSS.pine   -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-100-TYPE-KDJ-D.pine       -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-100-TYPE-KDJ-J.pine       -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-100-TYPE-KDJ-K.pine       -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-100-TYPE-KDJ.pine         -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
##################################################
Get-Content MyLib-100-TYPE-MACD-CROSS.pine  -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-100-TYPE-MACD-DEA.pine    -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-100-TYPE-MACD-DIF-.pine   -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-100-TYPE-MACD-OSC.pine    -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
Get-Content MyLib-100-TYPE-MACD.pine        -Encoding UTF8        | Add-Content merged.txt -Encoding UTF8
pause