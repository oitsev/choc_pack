
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-20.12.0.1895_x86'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-20.12.0.1895_x86.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_1895*'
  checksum      = 'C0E5159BEF4E3D49903AA8C2B5BD5EFD6E5618BCE6301DB111B714D838752D2F'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















