$source = Get-Item "./MyLib-Part/MyLib*.part" | Sort
##################################################
$target = "MyLib.pine"
##################################################
if (Test-Path $target)
{
  Remove-Item $target
}
##################################################
$source | ForEach-Object {
  Write-Host "���b�B�z $_"
  Get-Content $_ -Encoding UTF8 | Add-Content $target -Encoding UTF8
}
##################################################
pause