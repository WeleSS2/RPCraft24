$sourceFolder = "C:\Users\Jacob\Desktop\Gry\Mineraft RPCraft 2024\scripts"
$destinationFolder = "D:\SGry\UltimMC\instances\RPCraft\.minecraft\scripts\RPScripts"

$spellsSource = "C:\Users\Jacob\Desktop\Gry\Mineraft RPCraft 2024\config"
$spellsDestination = "D:\SGry\UltimMC\instances\RPCraft\.minecraft\config"

# Check if source folder exists
if (!(Test-Path -Path $sourceFolder -PathType Container)) {
    Write-Host "Source folder doesn't exist."
    exit
}

# Check if destination folder exists, if not, create it
if (!(Test-Path -Path $destinationFolder -PathType Container)) {
    New-Item -ItemType Directory -Path $destinationFolder | Out-Null
}

# Check if source folder exists
if (!(Test-Path -Path $spellsSource -PathType Container)) {
    Write-Host "Spells source folder doesn't exist."
    exit
}

# Check if destination folder exists, if not, create it
if (!(Test-Path -Path $spellsDestination -PathType Container)) {
    New-Item -ItemType Directory -Path $spellsDestination | Out-Null
}


# Copy files from source folder to destination folder with overwrite
Copy-Item -Path $sourceFolder\* -Destination $destinationFolder -Force -Recurse

Write-Host "Files copied from $sourceFolder to $destinationFolder with overwrite."


# Copy files from source folder to destination folder with overwrite
Copy-Item -Path $spellsSource\* -Destination $spellsDestination -Force -Recurse

Write-Host "Files copied from $spellsSource to $spellsDestination with overwrite."