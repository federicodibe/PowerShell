# Federico Di Bernardo

# Script che mi dice se un file è lockato oppure no

# Esempio di utilizzo 
#   Test-FileLock.ps1 'C:\user\pippo.lol'

# --------------- 

param([string]$fileName)

function Test-FileLock {
  param (
    [parameter(Mandatory=$true)][string]$Path
  )

  $oFile = New-Object System.IO.FileInfo $Path

  if ((Test-Path -Path $Path) -eq $false) {
    return $false
  }

  try {
    $oStream = $oFile.Open([System.IO.FileMode]::Open, [System.IO.FileAccess]::ReadWrite, [System.IO.FileShare]::None)

    if ($oStream) {
      $oStream.Close()
    }
    Write-Host 'Non bloccato'
  } catch {
    # File locked da un processo
	  Write-Host 'Bloccato'
  }
}

Test-FileLock -Path $fileName