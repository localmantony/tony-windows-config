function Copy-CustomConfigs {
    Copy-Item -Path ".\CustomConfig\beeftext.json" -Destination "$env:APPDATA\Beeftext" -Force
    Copy-Item -Path ".\CustomConfig\Productivity.ahk" -Destination "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup" -Force
}

Copy-CustomConfigs
