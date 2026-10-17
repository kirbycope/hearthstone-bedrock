![hearthstone-bedrock](/hearthstone-bedrock.png)

# hearthstone-bedrock
A Warcraft hearthstone for Minecraft Bedrock Edition

## Installing the Add-on
1. Download the [.mcaddon](https://github.com/kirbycope/hearthstone-bedrock/releases/latest/download/hearthstone-bedrock.mcaddon) file
1. Double-click to install using Minecraft
1. Activate the behavior pack and resource pack for your world. No experiments are needed.

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

## Requirements
Minecraft Bedrock 1.26.0 or newer. The items run their functions through a script custom component
(`scripts/main.js`, `@minecraft/server` 2.6.0) instead of the Holiday Creator Features item events the add-on used
to need.

## Releasing
Pushing a tag that starts with `v` (for example `git tag v1.0.0 && git push origin v1.0.0`) runs the Release workflow in `.github/workflows/release.yml`, which builds the add-on and attaches `hearthstone-bedrock.mcaddon` to a GitHub Release.

To build it locally, run `python tools/build_addon.py`. It writes `build/hearthstone-bedrock.mcaddon`, which git ignores, and leaves the committed `hearthstone-bedrock.mcaddon` as it is.
