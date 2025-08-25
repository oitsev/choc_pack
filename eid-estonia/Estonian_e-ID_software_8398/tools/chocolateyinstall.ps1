
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-25.8.18.8398'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-25.8.18.8398.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_8398*'
  checksum      = '2BFCBF4286FEFFC317051638B13EDC8FB755FB7FBA13F66DE936668F79214687'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















