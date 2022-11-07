# New Aliases
function la {Get-ChildItem | Format-Wide}
function ll {Get-ChildItem | Format-List}
function vimEdit {vim "~/AppData/Local/nvim" }
function admin { sudo pwsh }
# function dSearch { Get-Item –Path D:\ -IgnoreCase}
function pwshEdit {vim "~/.config/powershell/"}
function pwshManual {
  cat "~/.config/powershell/user_profile.ps1"
  cat "~/.config/powershell/new-alias.ps1"
  cat "~/.config/powershell/new-alias.ps1"
}
function gitReps {cd "D:/gitRepository" && ls}
function ho{cd ~}
function wtEdit{vim "~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState"}
