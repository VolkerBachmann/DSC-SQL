Helping to automate the install of Microsoft SQL server, this was tested on Microsoft Server 2016 and Microsoft SQL server 2017.
The way to execute these files: 
##############################
1- 'deployDotNet4.ps1', this is a helper stage, in the case of the dotNet4 framework not being installed in the first place, it will be needed. The package itself is obtainable within dotNetFx_Full_Setup.exe.
2-  'InstallDscDependencies.ps1', Install required dependencies.
3- 'GenerateSQLConfiguration.ps1', An on the fly file will be generated, its possible to manipulate this file and add more components to aid the customisation of the install.  (These are one of the advantages of running this install with this specific DSC way).
4- 'DeploySQLServer.ps1', Actually installs the components listed in the generated file above.
5- 'ValidateSQLServer.ps1', will check for the SQL processes that are running. This will show the components that are running.
6- 'StopSQLServer.psq' , This will shut down the running services. 
