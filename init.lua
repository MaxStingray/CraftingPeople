
-- spawn command
minetest.register_chatcommand("spawn", {
	description = "Teleport to spawn",
	privs = {interact = true},
	func = function(name)
		local pos = minetest.setting_get_pos("static_spawnpoint")
		if not pos then
			return false, "No spawn point set."
		end
		local player = minetest.get_player_by_name(name)
		player:set_pos(pos)
		return true, "Teleported to Spawn!"
	end
})