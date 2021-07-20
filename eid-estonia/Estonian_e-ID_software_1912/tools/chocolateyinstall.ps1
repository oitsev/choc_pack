
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-21.6.0.1912'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-21.6.0.1912.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_1912*'
  checksum      = 'FC1D8EFAF26127F1787CF77A197C41DD6215DCEEDC4371419F8D745B94A27979'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















