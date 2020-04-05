# Add to user Path (checks for existence), PowerShell Version
try{
    if(-not [Environment]::GetEnvironmentVariable('Path', 'User')){
        Write-Host 'No user-variable "Path" found. Creating variable now...';
        [Environment]::SetEnvironmentVariable('Path', $pwd.Path, 'User');
        Write-Host 'Created. Content: ';
        Write-Host ([Environment]::GetEnvironmentVariable('Path', 'User')) -ForegroundColor Green
    }elseif(-not [Environment]::GetEnvironmentVariable('Path', 'User').Contains($pwd.Path)){
        [Environment]::SetEnvironmentVariable('Path', [Environment]::GetEnvironmentVariable('Path', 'User') + ';' + $pwd.Path, 'User');
        Write-Host 'Added to user-variable "Path":';
        Write-Host $pwd.Path -ForegroundColor Green
    }else{
        Write-Host 'Already existing in user-vaiable "Path":';
        Write-Host $pwd.Path -ForegroundColor Green
    }
}catch{
    Write-Host 'An error occured while creating User-variable "Path" or adding the current directory to it.' -ForegroundColor Red
}
Write-Host 'Press any key to exit...';
$Host.UI.RawUI.ReadKey('NoEcho, IncludeKeyDown') | OUT-NULL;
$Host.UI.RawUI.FlushInputbuffer();
exit

# Add to user Path (checks for existence), RegEdit Version
# RegEx replace pattern to make a single Liner: (\s*)(\n)(\s*)
try{if(-not [Environment]::GetEnvironmentVariable('Path', 'User')){Write-Host 'No user-variable "Path" found. Creating variable now...';[Environment]::SetEnvironmentVariable('Path', $pwd.Path, 'User');Write-Host 'Created. Content: ';Write-Host ([Environment]::GetEnvironmentVariable('Path', 'User')) -ForegroundColor Green}elseif(-not [Environment]::GetEnvironmentVariable('Path', 'User').Contains($pwd.Path)){[Environment]::SetEnvironmentVariable('Path', [Environment]::GetEnvironmentVariable('Path', 'User') + ';' + $pwd.Path, 'User');Write-Host 'Added to user-variable "Path":';Write-Host $pwd.Path -ForegroundColor Green}else{Write-Host 'Already existing in user-vaiable "Path":';Write-Host $pwd.Path -ForegroundColor Green}}catch{Write-Host 'An error occured while creating User-variable "Path" or adding the current directory to it.' -ForegroundColor Red}Write-Host 'Press any key to exit...';$Host.UI.RawUI.ReadKey('NoEcho, IncludeKeyDown') | OUT-NULL;$Host.UI.RawUI.FlushInputbuffer();exit

# Full Version for RegEdit
PowerShell -NoExit -windowstyle normal -Command "Set-Location -LiteralPath '%L'; try{if(-not [Environment]::GetEnvironmentVariable('Path', 'User')){Write-Host 'No user-variable "Path" found. Creating variable now...';[Environment]::SetEnvironmentVariable('Path', $pwd.Path, 'User');Write-Host 'Created. Content: ';Write-Host ([Environment]::GetEnvironmentVariable('Path', 'User')) -ForegroundColor Green}elseif(-not [Environment]::GetEnvironmentVariable('Path', 'User').Contains($pwd.Path)){[Environment]::SetEnvironmentVariable('Path', [Environment]::GetEnvironmentVariable('Path', 'User') + ';' + $pwd.Path, 'User');Write-Host 'Added to user-variable "Path":';Write-Host $pwd.Path -ForegroundColor Green}else{Write-Host 'Already existing in user-vaiable "Path":';Write-Host $pwd.Path -ForegroundColor Green}}catch{Write-Host 'An error occured while creating User-variable "Path" or adding the current directory to it.' -ForegroundColor Red}Write-Host 'Press any key to exit...';$Host.UI.RawUI.ReadKey('NoEcho, IncludeKeyDown') | OUT-NULL;$Host.UI.RawUI.FlushInputbuffer();exit"




