@echo off
echo Installing Firefox, DirectX, 7-Zip, qBittorrent, Spotify, and .NET Framework...

winget install --id Mozilla.Firefox -e --silent
winget install --id Microsoft.DirectX -e --silent
winget install --id 7zip.7zip -e --silent
winget install --id qBittorrent.qBittorrent -e --silent
winget install --id Spotify.Spotify -e --silent
winget install --id Microsoft.DotNet.Framework.DeveloperPack_4 -e --silent

echo Done!
pause
