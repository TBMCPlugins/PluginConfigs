repos=(
	"SpraxDev/BetterChairs"
	"ChestShop-authors/ChestShop-3"
	"ChestShop-authors/ChestShopNotifier"
	"TBMCPlugins/ChromaCore"
	"TBMCPlugins/Chroma-Chat"
	"TBMCPlugins/Chroma-Discord"
	"PlayPro/CoreProtect"
	"TownyAdvanced/Dynmap-Towny"
	"EssentialsX/Essentials"
	"IntellectualSites/FastAsyncWorldEdit"
	"Multiverse/Multiverse-Core"
	"NuVotifier/NuVotifier"
	"TownyAdvanced/Towny"
	"MilkBowl/Vault"
	"PryPurity/WorldBorder"
)

for repo in "${repos[@]}"; do
	wget https://api.github.com/repos/$repo/releases/latest -O - | awk -F \" -v RS="," '/browser_download_url/ {print $(NF-1)}' | xargs wget
done

# TODO: Towny isn't extracted
# TODO: All EssentialsX plugins are downloaded

curl -L https://dev.bukkit.org/projects/dynmap-worldguard/files/latest > Dynmap-WorldGuard.jar # The name always becomes "latest"
curl -L https://dev.bukkit.org/projects/openinv/files/latest > OpenInv.jar

# TODO: These excluded aren't supported atm, update manually
# TODO: This is intended to remove the plugins before downloading the new ones
find -maxdepth 1 ! -name "CMILib*.jar" ! -name "Dynmap*.jar" ! -name "EnjinMinecraftPlugin.jar" ! -name "iPortal*.jar" ! -name "Jobs*.jar" ! -name "LuckPerms*.jar" ! -name "worldguard*.jar" -name "*.jar" -print
