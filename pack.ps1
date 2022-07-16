#Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

$addonName = "hearthstone-bedrock";
$gameDirectory = "$env:LOCALAPPDATA\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang";
$behaviorPacktory = "$gameDirectory\development_behavior_packs";
$resourcePacktory = "$gameDirectory\development_resource_packs";
$temp = "$gameDirectory\temp";

# Create temp directory
New-Item -Path "$gameDirectory\" -Name "temp" -ItemType "directory" -Force;
# Copy Behavior Pack to temp directory
Copy-Item -Path "$behaviorPacktory\$addonName" -Recurse -Destination "$temp\$addonName Behavior" -Container;
# Copy Resource Pack to temp directory
Copy-Item -Path "$resourcePacktory\$addonName" -Recurse -Destination "$temp\$addonName Resources" -Container;
# Compress the directory into a .mcaddon
Compress-Archive -Path  "$temp\*" -DestinationPath "$gameDirectory\$addonName.zip" -Force;
# Remove existing zip
Remove-Item "$gameDirectory\$addonName.mcaddon" -Force -ErrorAction SilentlyContinue;
# Rename zip to mcaddon
Rename-Item -Path "$gameDirectory\$addonName.zip" -NewName "$gameDirectory\$addonName.mcaddon";
# Delete temp directory
Remove-Item "$temp" -Recurse -Force -ErrorAction SilentlyContinue;
