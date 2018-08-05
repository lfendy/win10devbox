function ShowFileExtensions()
{
    Push-Location
    Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
    Set-ItemProperty . HideFileExt "0"
    Pop-Location
}

function RefreshExplorer()
{
    Stop-Process -processName: Explorer -force
}

ShowFileExtensions
RefreshExplorer
