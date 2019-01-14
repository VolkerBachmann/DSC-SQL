Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Confirm:$false -force
Install-Module -Name SqlServerDsc -Confirm:$false -force
Install-Module -Name xWebAdministration -force 
Configuration SQLInstall {..} 