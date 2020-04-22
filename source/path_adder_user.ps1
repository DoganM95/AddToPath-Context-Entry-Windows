# Add to user Path (checks for existence), PowerShell Version
try {
    $pathToWrite = $pwd.Path.Replace('Microsoft.PowerShell.Core\FileSystem::', '');
    if (-not [Environment]::GetEnvironmentVariable('Path', 'User')) {
        Write-Host 'No user-variable "Path" found. Creating variable now...';
        [Environment]::SetEnvironmentVariable('Path', $pathToWrite, 'User');
        Write-Host 'Created. Content: ';
        Write-Host ([Environment]::GetEnvironmentVariable('Path', 'User')) -ForegroundColor Green
    }
    elseif (-not [Environment]::GetEnvironmentVariable('Path', 'User').Contains($pathToWrite)) {
        [Environment]::SetEnvironmentVariable('Path', [Environment]::GetEnvironmentVariable('Path', 'User') + ';' + $pathToWrite, 'User');
        Write-Host 'Added to user-variable "Path":';
        Write-Host $pathToWrite -ForegroundColor Green
    }
    else {
        Write-Host 'Already existing in user-vaiable "Path":';
        Write-Host $pathToWrite -ForegroundColor Green
    }
}
catch {
    Write-Host 'An error occured while creating User-variable "Path" or adding the current directory to it.' -ForegroundColor Red
}
Write-Host 'Press any key to exit...';
$Host.UI.RawUI.ReadKey('NoEcho, IncludeKeyDown') | OUT-NULL;
$Host.UI.RawUI.FlushInputbuffer();
exit

# Add to user Path (checks for existence), RegEdit Version
# RegEx replace pattern to make a single Liner: (\s*)(\n)(\s*)
try { $pathToWrite = $pwd.Path.Replace('Microsoft.PowerShell.Core\FileSystem::', ''); if (-not [Environment]::GetEnvironmentVariable('Path', 'User')) { Write-Host 'No user-variable "Path" found. Creating variable now...'; [Environment]::SetEnvironmentVariable('Path', $pathToWrite, 'User'); Write-Host 'Created. Content: '; Write-Host ([Environment]::GetEnvironmentVariable('Path', 'User')) -ForegroundColor Green } elseif (-not [Environment]::GetEnvironmentVariable('Path', 'User').Contains($pathToWrite)) { [Environment]::SetEnvironmentVariable('Path', [Environment]::GetEnvironmentVariable('Path', 'User') + ';' + $pathToWrite, 'User'); Write-Host 'Added to user-variable "Path":'; Write-Host $pathToWrite -ForegroundColor Green } else { Write-Host 'Already existing in user-vaiable "Path":'; Write-Host $pathToWrite -ForegroundColor Green } } catch { Write-Host 'An error occured while creating User-variable "Path" or adding the current directory to it.' -ForegroundColor Red } Write-Host 'Press any key to exit...'; $Host.UI.RawUI.ReadKey('NoEcho, IncludeKeyDown') | OUT-NULL; $Host.UI.RawUI.FlushInputbuffer(); exit


#Regedit Path for entry:
HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\Add To Path (User)\command

# Full Version for RegEdit
PowerShell -NoExit -windowstyle normal -Command "Set-Location -LiteralPath '%L'; try { $pathToWrite = $pwd.Path.Replace('Microsoft.PowerShell.Core\FileSystem::', ''); if (-not [Environment]::GetEnvironmentVariable('Path', 'User')) { Write-Host 'No user-variable "Path" found. Creating variable now...'; [Environment]::SetEnvironmentVariable('Path', $pathToWrite, 'User'); Write-Host 'Created. Content: '; Write-Host ([Environment]::GetEnvironmentVariable('Path', 'User')) -ForegroundColor Green } elseif (-not [Environment]::GetEnvironmentVariable('Path', 'User').Contains($pathToWrite)) { [Environment]::SetEnvironmentVariable('Path', [Environment]::GetEnvironmentVariable('Path', 'User') + ';' + $pathToWrite, 'User'); Write-Host 'Added to user-variable "Path":'; Write-Host $pathToWrite -ForegroundColor Green } else { Write-Host 'Already existing in user-vaiable "Path":'; Write-Host $pathToWrite -ForegroundColor Green } } catch { Write-Host 'An error occured while creating User-variable "Path" or adding the current directory to it.' -ForegroundColor Red } Write-Host 'Press any key to exit...'; $Host.UI.RawUI.ReadKey('NoEcho, IncludeKeyDown') | OUT-NULL; $Host.UI.RawUI.FlushInputbuffer(); exit"