module main

import mcpkg

fn main() {
	mut api := mcpkg.new_api()
	api.initialize()

	demo_mods := api.search_for_mods(mcpkg.SearchFilter{
		game_versions:['1.17.1'],
		query:'sodium',
		platform_name:'modrinth'
	})

	if demo_mods.len > 0 {
		demo_mod := demo_mods[0]
		api.install_mod(demo_mod)
	}
}
