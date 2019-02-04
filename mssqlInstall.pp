
  file { 'C:\temp\':
    ensure => 'directory',
  }
  download_file {"Microsoft SQL Server 2017 (64-bit)":
    url => 'http://172.19.246.254/winsrv2016sq2017/SW_DVD9_NTRL_SQL_Svr_Standard_Edtn_2017_64Bit_English_OEM__VL_X21-56945.ISO',
        destination_directory => 'C:\temp',
  }

windows_isos{'SQLServer':
  ensure   => present,
  isopath  => 'C:\temp\SW_DVD9_NTRL_SQL_Svr_Standard_Edtn_2017_64
Bit_English_OEM__VL_X21-56945.ISO',
}



  package {"Microsoft SQL Server 2017 (64-bit)":
    ensure => 'installed',
    source => 'C:\temp\SSS_X64FREV_EN-US_DV9\setup.exe',
    install_options => ['/quite'],
  }
