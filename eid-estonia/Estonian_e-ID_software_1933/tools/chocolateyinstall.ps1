
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-22.11.0.1933'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-22.11.0.1933.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_1933*'
  checksum      = 'FC53E5C92A3D11DBC5B65E5F68ADAB2354BB4930D59EF398CF87E11BACE72420'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















