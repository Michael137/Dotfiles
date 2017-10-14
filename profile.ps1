$fg= 'yellow'
$time= Get-Date
$psVersion= ($host.Version.Major).ToString() + "." + ($host.Version.Minor).ToString()
$curUser= (Get-ChildItem Env:\USERNAME).Value
$curComp= (Get-ChildItem Env:\COMPUTERNAME).Value

Write-Host "Greetings, $curUser!" -foregroundColor $fg
Write-Host "It is: $($time.ToLongDateString())"
Write-Host "You're running PowerShell version: $psVersion" -foregroundColor Cyan

function Prompt {
Write-Host -NoNewLine $curUser -foregroundColor Yellow
Write-Host -NoNewLine "|" -foregroundColor Magenta
Write-Host -NoNewLine "$curComp" -foregroundColor Blue
Write-Host -NoNewLine "[" -foregroundColor Magenta
Write-Host -NoNewLine $pwd -foregroundColor DarkGreen -backgroundColor Cyan
Write-Host -NoNewLine "]" -foregroundColor Magenta
Write-Host -NoNewLine "`n$>>" -foregroundColor DarkBlue

$host.UI.RawUI.WindowTitle = "PS >> User: $curUser >> Current DIR: $((Get-Location).Path)"

Return " "
}