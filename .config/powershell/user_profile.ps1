oh-my-posh init pwsh --config '~/.config/powershell/themes/harsh.omp.json' | Invoke-Expression

# Chocolatey Config (START)
#
# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Chocolatey Config (END)

# Starship Prompt Customization
# Invoke-Expression (&starship init powershell)

# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
# InstallModule -Name Terminal-Icons -Repository PSGallery -Force
Import-Module Terminal-Icons

# Importing My Custom new alias script

# ls in Different Style 
function la {Get-ChildItem | Format-Wide} # Width view
function lla {Get-ChildItem | Format-List} # List view

# neovim config edit
function vimEdit {vim "~/AppData/Local/nvim" } 

# my project Directory

function myPro {Set-Location "D:/Projects"}

# neovim config view
function vimView {Set-Location "~/AppData/Local/nvim" && ls } 

# sudo mode
function admin { sudo pwsh } 

# Shifting Drive (Still Working On It)
# function dSearch { Get-Item –Path D:\ -IgnoreCase}

# pwsh config edit
function pwshEdit {vim "~/.config/powershell/"}

# pwsh config view
function pwshview {Set-Location "~/.config/powershell/" && Get-ChildItem}

# Fuction for alias display
function pwshManual {
  Get-Content "~/.config/powershell/new-alias.ps0" && Get-Content "~/.config/powershell/set-alias.ps1"
}

# cd to Git Repos 
function gitReps {Set-Location "~/gitRepository" && Get-ChildItem}

# Home Directory Shortcut
function ho{Set-Location ~}

# Terminal Config Editing (Windows)
function wtEdit{vim "~/AppData/Local/Packages/Microsoft.WindowsTerminal_7wekyb3d8bbwe/LocalState"}

# Shift to masm dir
function m_masm{Set-Location "C:/masm614/BIN"}

# Adding which function
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# Importing My Custom set alias script

# Setting Aliases
Set-Alias apt scoop
Set-Alias gpt Get-PoshThemes
Set-Alias touch New-Item
Set-Alias vim nvim
Set-Alias eth Get-NetIPAddress
Set-Alias fdir Get-ChildItem
Set-Alias grep findstr

