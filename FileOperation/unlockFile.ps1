# Federico Di Bernardo

# Sblocca qualsiasi file lockato

# Esempio di utilizzo:
#   C:\Users> .\unlockFile.ps1 'C:\Users\file.dat'

param([string]$fileName)

# --------------- 

#   [ CONFIGURATION ]

# HACK Federico
# Attiva il debug. Per ripristinare la modalità standard impostare come valore 'SilentlyContinue'

# $DebugPreference = 'Continue'

# $DebugPreference = 'SilentlyContinue'

#   [ END CONFIGURATION ]

# --------------- 

# Write-Debug "Start"

function Close-AllHandles {
    param(
        [Parameter(Mandatory=$true)]
        [object[]]$HandleInfo)

    foreach ($line in $handles) {

        Write-Debug "Start"

        $line=$Line.trim()
        if($line -like "*pid:*") {
            $result = $line | Select-String -pattern '^([^ ]*)\s*pid: ([0-9]*)\s*type: ([^ ]*)\s*([^ ]*)\s*(.*?): (.*)'
 
            $processName =  $result.Matches[0].Groups[1].Value
            $processId = [int]::Parse( $result.Matches[0].Groups[2].Value)
            $type = $result.Matches[0].Groups[3].Value
            $user = $result.Matches[0].Groups[4].Value
            $handleId =  $result.Matches[0].Groups[5].Value
            $name = $result.Matches[0].Groups[6].Value
            
            Write-Host "$($processName) - $($processId) - $($handleId)"

            # Chiudo gli handler
            if($processId -and $handleId) {
                # Tentativo di kill degli handler non riuscito
                # ./handle/handle64.exe -c $handleId -p $processId -y
                Stop-Process -Id $processId -Force
                Write-Host "$($processName) - $($processId) - $($handleId)"
            }
        }
    }
}

# Punto di partenza dell'esecuzione

if(!$filename){
    echo "Rispettare il formato: ex unlockFile.ps1 'C:\Users\file.dat'"
} else {
    Write-Host $fileName
    $handles = & ./handle/handle64.exe -a -u -accepteula $filename
    if($handles){
        Close-AllHandles -HandleInfo $handles    
    }
}
