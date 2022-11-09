oh-my-posh init pwsh --config '~/.config/powershell/zash.omp.json' | Invoke-Expression

# InstallModule -Name Terminal-Icons -Repository PSGallery -Force
Import-Module Terminal-Icons

# Importing My Custom new alias script

# ls in Different Style 
function la {Get-ChildItem | Format-Wide} # Width view
function ll {Get-ChildItem | Format-List} # List view

# neovim config edit
function vimEdit {vim "~/AppData/Local/nvim" } 

# neovim config view
function vimView {cd "~/AppData/Local/nvim" } 

# sudo mode
function admin { sudo pwsh } 

# Shifting Drive (Still Working On It)
# function dSearch { Get-Item –Path D:\ -IgnoreCase}

# pwsh config edit
function pwshEdit {vim "~/.config/powershell/"}

# pwsh config view
function pwshview {cd "~/.config/powershell/" && ls}

# Fuction for alias display
function pwshManual {
  cat "~/.config/powershell/new-alias.ps0" && cat "~/.config/powershell/set-alias.ps1"
}

# cd to Git Repos 
function gitReps {cd "~/gitRepository" && ls}

# Home Directory Shortcut
function ho{cd ~}
d
# Terminal Config Editing (Windows)
function wtEdit{vim "~/AppData/Local/Packages/Microsoft.WindowsTerminal_7wekyb3d8bbwe/LocalState"}

# Shift to masm dir
function m_masm{cd "C:/masm614/BIN"}

# Importing My Custom set alias script

# Setting Aliases
Set-Alias apt scoop
Set-Alias gpt Get-PoshThemes
Set-Alias touch New-Item
Set-Alias vim nvim
Set-Alias eth Get-NetAdapter
Set-Alias fdir Get-ChildItem
Set-Alias cl clear

