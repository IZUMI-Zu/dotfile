# oh-my-posh --init --shell pwsh --config "C:\Users\17957\AppData\Local\Programs\oh-my-posh\themes\M365Princess.omp.json" | Invoke-Expression
# oh-my-posh --init --shell pwsh --config "C:\Users\17957\AppData\Local\Programs\oh-my-posh\themes\star.omp.json" | Invoke-Expression
oh-my-posh --init --shell pwsh --config "C:\Users\17957\AppData\Local\Programs\oh-my-posh\themes\spaceship.omp.json" | Invoke-Expression



# Invoke-Expression (&starship init powershell)
Import-Module PSReadLine
Import-Module posh-git
Import-Module -Name Terminal-Icons
Import-Module npm-completion

Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
# Set-PSReadLineOption -PredictionViewStyle InlineView

Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadLineKeyHandler -Key "Ctrl+d" -Function MenuComplete
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo
# Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
# Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

$greetings =
'🚀 Hello there! ',
'🚀 Glad to see you!',
'🚀 Welcome Back!',
'🚀 Happy coding!',
'🚀 Have a great day!',
'🚀 Be one with the Snover',
'🚀 May the PowerShell be with you!'


Write-Host -ForegroundColor Cyan ($greetings | Get-Random)
Write-Host -ForegroundColor White (Get-Date)
Write-Host -ForegroundColor Cyan

function ll {Get-ChildItem}

function gitl {
    git log --all --oneline --graph --decorate
}

Set-Alias -Name Python3 -Value python
Set-Alias lvim "C:\Users\17957\.local\bin\lvim.ps1"
Set-Alias lg "lazygit"
# to use auto depndency check for node
Remove-Alias -Name ni -Force

# iex "$(thefuck --alias)"

Import-Module 'D:\CodingTools\vcpkg\scripts\posh-vcpkg'
