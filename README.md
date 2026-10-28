# Vanilla Skyblock & Farm World Datapack

Bring back that classic 2012-era Skyblock server feeling—in vanilla single-player Minecraft.

Build your island in a void dimension, then visit the normal Overworld to explore and gather resources. Carry your items freely between both worlds and enjoy building in the sky without being limited to the resources on your starting island.

No server setup, mod loader, or extra recipes required. Just a datapack.

**Target version:** Minecraft Java Edition 26.3  
**Support:** Single-player only. Multiplayer is not currently supported.

## 🌟 Features

- **Super Lightweight:** No Forge, Fabric, or server plugins required. It's a pure Vanilla datapack.
- **Automatic setup:** Creates a custom Skyblock dimension and places your starting island on your first visit.
- **Saved farm hub:** Saves your initial Overworld position once and uses that location as the centre for future returns. The hub persists across saves and restarts.
- **Surface landing:** Returning to the farm world selects a landing height near the saved hub, rather than relying on a fixed Y coordinate or a loaded marker entity.
- **Free inventory transfer:** Take your inventory, armour, offhand items, and XP between dimensions.
- **Persistent island:** Your builds and chest contents remain when you leave, return, or restart the game.
- **Recoverable farm teleports:** If the return command fails or hub coordinates are missing, the pack displays an error and lets you retry.
- **Respawn-aware travel:** The trigger checks your current dimension, so dying and respawning in another dimension does not reverse the travel direction.

## 🌿 Choose Your Version

Two variants offer different styles of Skyblock:

### Multi-Biome

A void dimension with Overworld biome variety, including biome-dependent weather and colours. Snowy areas offer possibilities that a plains-only island does not.

**Known trade-off:** Floating vanilla structures and world-generation features can appear. Choose this version if you value biome variety and do not mind encountering them.

### Classic Flat

A plains-only void intended for the traditional Skyblock experience: your starting island surrounded by empty space, without the floating structures and features of the multi-biome variant.

**Install only one variant per world.** Switching variants in an existing world has not been tested; already generated chunks will not automatically regenerate to match the other variant.

## 🚀 Installation

### New world

1. Download your preferred variant's datapack ZIP from this repository's **Releases** tab. Choose the attached datapack ZIP, rather than GitHub's automatic source-code archive.
2. Open Minecraft Java Edition **26.3** and select **Singleplayer → Create New World**.
3. Open **More → Data Packs**.
4. Drag the ZIP into the Minecraft window and confirm that you want to add it. Do not extract it.
5. Move the pack to the **Selected** side. Adding the ZIP alone does not activate it!
6. Finish creating your world.

The pack captures your initial Overworld position automatically. You do not need cheats enabled for normal travel.

### Updating an existing world

1. Back up the world and close it.
2. Replace the previous ZIP in the world's `datapacks` folder with the updated ZIP of the **same variant**.
3. Make sure only one version is installed, then reopen the world.

Do not open and save a world with the pack removed while it still depends on the custom Skyblock dimension. First-time installation into an existing world has not been validated; the intended setup is installation during world creation.

## 🎮 How to Play

Type this command in chat:

```mcfunction
/trigger sb_trigger
```

| Your current dimension | Destination |
| --- | --- |
| Skyblock | Near the saved Overworld farm hub |
| Overworld | Your Skyblock island |
| Nether or End | Your Skyblock island |

The farming world is the normal Overworld, not an additional copy. The hub is your captured initial position—not a live reference to the world spawn or your bed.

Your bed controls where you respawn after death. After respawning, the next trigger uses the dimension you are actually in.

## 💾 Performance and Testing

In the creator's testing, Minecraft memory usage was usually around **3 GB**, with brief spikes to approximately **5 GB**. These figures describe the Minecraft session as a whole, not memory used exclusively by the datapack.

Memory use and loading times depend on your settings, hardware, and world. If you encounter memory pressure, you can try allocating more RAM in your launcher—for example, `-Xmx6G` on a computer with sufficient available memory. This is not an established minimum requirement or a guarantee against crashes.

The current development build has passed creator testing for:

- Travel in both directions without landing-related fall damage.
- Hub persistence after saving and reopening the world.
- Returning through Skyblock after travelling 100,000 blocks away in the Overworld.
- Missing-coordinate failure handling and successful retry after restoring the coordinate.
- Island and chest persistence.
- Inventory, armour, offhand, and XP transfer.
- Travel involving the Nether and End.
- Cross-dimension respawning, including dying in the Nether and respawning at a Skyblock bed.

These are manual tests on the creator's setup, not a guarantee for every world or configuration. Only Minecraft Java Edition **26.3** is currently targeted; compatibility with older versions is not claimed.

## 🗺️ Roadmap

- **Nether Skyblock:** Explore a custom Nether void dimension and portal linkage.
- **Multiplayer support:** Investigate shared or separate islands and multiplayer-safe initialization. Multiplayer is outside the current supported scope.

## 🤝 Contributing

Issues and pull requests are welcome, including bug reports, performance improvements, and ideas for future multiplayer support.

For bug reports, include your Minecraft version, datapack version and variant, steps to reproduce the issue, and relevant messages or logs. Please test fixes in a disposable world before using them in your main save.

## ⚖️ License and Warranty

This project is licensed under the [PolyForm Noncommercial License 1.0.0](https://polyformproject.org/licenses/noncommercial/1.0.0).

You may use, modify, and share it for purposes permitted by that license, including personal hobby use. The license does not grant permission to sell this datapack or commercially distribute adaptations derived from it, including paid Bedrock ports. Refer to the full license for its permissions, conditions, and exceptions.

The datapack is provided **as is**, without warranty, and liability is limited as set out in the license and to the extent permitted by law.

**Always back up your worlds before installing or updating datapacks.**

This is an unofficial community project and is not affiliated with or endorsed by Mojang or Microsoft.
