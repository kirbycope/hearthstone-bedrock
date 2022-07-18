![hearthstone-bedrock](/hearthstone-bedrock.png)

# hearthstone-bedrock
A Warcraft hearthstone for Minecraft Bedrock Edition

## Packaging the Add-on
1. Open a new terminal in Visual Studio Code
1. Run `.\pack.ps1`

## Installing the Add-on
1. Download the [.mcaddon](https://github.com/kirbycope/hearthstone-bedrock/raw/main/hearthstone-bedrock.mcaddon) file
1. Double-click to install using Minecraft
1. Activate the behavior pack and resource pack for your world
   - The world must have Holiday Creator Experiments enabled
      - World Settings > Experiments > Holiday Creator Features

## Using the Add-on
1. `give @p hb:hearthstone`
   - When used will _teleport_ you to the nearest Waystone entity (if one exists)
1. `give @p hb:placer`
   - When used it will _place_ a Waystone entity
1. Attack the Waystone with the Hearthstone to remove it and pick up the placer
   - Nothing else can damage the Waystone

### Image Credits
* [hearthstone.png](/development_resource_packs/hearthstone-bedrock/textures/items/hearthstone.png) is based on [wowpedia](https://static.wikia.nocookie.net/wowpedia/images/c/cb/Inv_misc_rune_01.png/revision/latest?cb=20091028041736)
* [pack_icon.png](/development_resource_packs/hearthstone-bedrock/pack_icon.png) is from [WoWPedia](https://static.wikia.nocookie.net/wowpedia/images/a/a7/BTNPebble-Reforged.png/revision/latest?cb=20210512144119)
* [waystone.png](/development_resource_packs/hearthstone-bedrock/textures/blocks/waystone.png) is from [logos-world](https://logos-world.net/wp-content/uploads/2021/02/Hearthstone-Logo.png)
* [waystone_side.png](/development_resource_packs/hearthstone-bedrock/textures/blocks/waystone_side.png) based on [Ben Thompson's work](https://cdna.artstation.com/p/assets/images/images/028/247/612/4k/ben-thompson-hs-lox-screen-tavern-doors.jpg?1593908771)
