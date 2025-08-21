@echo off
echo Installing 7-Zip, qBittorrent, Discord, Spotify, Steam, DirectX, and Firefox...

winget install --id 7zip.7zip -e --silent
winget install --id qBittorrent.qBittorrent -e --silent
winget install --id Discord.Discord -e --silent
winget install --id Spotify.Spotify -e --silent
winget install --id Valve.Steam -e --silent
winget install --id Microsoft.DirectX -e --silent
winget install --id Mozilla.Firefox -e --silent

echo Done!
pause
