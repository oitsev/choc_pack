
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-26.4.20.8412'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-26.4.20.8412.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_8412*'
  checksum      = '5E80644B2441C6C7637F89CBA455E6F821943110F498A4BC4D358910711878EE'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















