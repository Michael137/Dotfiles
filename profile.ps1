$fg= 'yellow'
$time= Get-Date
$psVersion= ($host.Version.Major).ToString() + "." + ($host.Version.Minor).ToString()
$curUser= (Get-ChildItem Env:\USERNAME).Value
$curComp= (Get-ChildItem Env:\COMPUTERNAME).Value

Write-Host "Greetings, $curUser!" -foregroundColor $fg
Write-Host "It is: $($time.ToLongDateString())"
Write-Host "You're running PowerShell version: $psVersion" -foregroundColor Cyan

function Prompt {

$curtime = Get-Date

Write-Host -NoNewLine "p" -foregroundColor $fg
Write-Host -NoNewLine "$" -foregroundColor Green
Write-Host -NoNewLine "[" -foregroundColor Yellow
Write-Host -NoNewLine ("{0:HH}:{0:mm}:{0:ss}" -f (Get-Date)) -foregroundColor $fg
Write-Host -NoNewLine "]" -foregroundColor Yellow
Write-Host -NoNewLine ">" -foregroundColor Red

$host.UI.RawUI.WindowTitle = "PS >> User: $curUser >> Current DIR: $((Get-Location).Path)"

Return " "

}