import { system } from "@minecraft/server";

// hb:run_function runs one of the pack's functions as the player using the item: the hearthstone takes them to
// the nearest waystone, the placer tidies up after its waystone is placed. This replaces the Holiday Creator
// Features item events, so the add-on needs no experiments.
system.beforeEvents.startup.subscribe(({ itemComponentRegistry }) => {
	const run = (player, params) => system.run(() => player.runCommand(`function ${params.function}`));
	itemComponentRegistry.registerCustomComponent("hb:run_function", {
		onUse({ source }, { params }) {
			if (params.on !== "use_on") run(source, params);
		},
		onUseOn({ source }, { params }) {
			if (params.on === "use_on") run(source, params);
		},
	});
});
