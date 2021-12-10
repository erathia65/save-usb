$SaveFolder = "C:\Sauvegarde\"
$UsbPath = "K:\"
if (Test-Path $SaveFolder) {

    Write-Host "Suppression de l'ancienne sauvegarde."
    Remove-Item $SaveFolder -Force -Recurse
}
else
{
    Write-Host "Dossier de sauvegarde inexistant."
}
Write-Host "Lancement de la Sauvegarde."
Copy-Item $UsbPath $SaveFolder -R