# Prepare release
# Make sure to have 7-zip installed and available in path
Write-Output "Packing release"
if (Test-Path ".\katharos.zip" -PathType Leaf) {
    Write-Output "Deleting existing archive"
    rm -Force katharos.zip
}
7z.exe a -tzip katharos.zip assets/* LICENSE pack.png pack.mcmeta package.json README.md
Write-Output "Done!"