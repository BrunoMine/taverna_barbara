--[[
	Mod Taverna_Barbara para Minetest
	Copyright (C) 2017 BrunoMine (https://github.com/BrunoMine)
	
	Recebeste uma cópia da GNU Lesser General
	Public License junto com esse software,
	se não, veja em <http://www.gnu.org/licenses/>. 
	
	Craftitens
	
  ]]

-- Cerveja
minetest.register_craftitem("taverna_barbara:cerveja", {
	description = "Cerveja",
	inventory_image = "taverna_barbara_cerveja.png",
	stack_max = 1,
	on_use = core.item_eat(4),
	on_place = function(itemstack, placer, pointed_thing)
		if minetest.is_protected(pointed_thing.above, placer:get_player_name()) == false then
			minetest.set_node(pointed_thing.above, {name="taverna_barbara:node_cerveja"})
			minetest.sound_play("default_glass_footstep", {pos = pointed_thing.above, max_hear_distance = 5, gain = 7.0,})
			itemstack:take_item(1)
		end
		return itemstack
	end,
})
hbhunger.register_food("taverna_barbara:cerveja", 4, "macronodes:garrafa_vidro", nil, 2, "taverna_barbara_bebendo_garrafa_de_vidro")


-- Whisky
minetest.register_craftitem("taverna_barbara:whisky", {
	description = "Whisky",
	inventory_image = "taverna_barbara_whisky.png",
	stack_max = 1,
	on_use = core.item_eat(5),
	on_place = function(itemstack, placer, pointed_thing)
		if minetest.is_protected(pointed_thing.above, placer:get_player_name()) == false then
			minetest.set_node(pointed_thing.above, {name="taverna_barbara:node_whisky"})
			minetest.sound_play("default_glass_footstep", {pos = pointed_thing.above, max_hear_distance = 5, gain = 7.0,})
			itemstack:take_item(1)
		end
		return itemstack
	end,
})
hbhunger.register_food("taverna_barbara:whisky", 5, "macronodes:garrafa_vidro", nil, 4, "taverna_barbara_bebendo_garrafa_de_vidro")


-- Amendoim Crocante
minetest.register_craftitem("taverna_barbara:amendoim", {
	description = "Amendoim Crocante",
	inventory_image = "taverna_barbara_amendoim.png",
	stack_max = 20,
	on_use = core.item_eat(2),
})
hbhunger.register_food("taverna_barbara:amendoim", 20, nil, nil, nil, "taverna_barbara_comendo_amendoim")

-- Balinha Sortida
minetest.register_craftitem("taverna_barbara:balinha_sortida", {
	description = "Balinha Sortida",
	inventory_image = "taverna_barbara_balinha_sortida_inv.png",
	wield_image = "taverna_barbara_balinha_sortida.png",
	stack_max = 20,
	on_use = core.item_eat(0)
})
hbhunger.register_food("taverna_barbara:balinha_sortida", 0, nil, nil, nil, "taverna_barbara_balinha_sortida")


-- Batanoura Defumada (Cruzamento de Batata com Cenoura)
minetest.register_craftitem("taverna_barbara:batanoura_defumada", {
	description = "Batanoura Defumada (Cruzamento de Batata com Cenoura)",
	inventory_image = "taverna_barbara_batanoura_defumada.png",
	stack_max = 10,
	on_use = core.item_eat(4)
})
hbhunger.register_food("taverna_barbara:batanoura_defumada", 4)
