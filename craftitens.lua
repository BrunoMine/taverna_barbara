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
	on_use = core.item_eat(taverna_barbara.saciamento_cerveja),
	on_place = function(itemstack, placer, pointed_thing)
		if minetest.is_protected(pointed_thing.above, placer:get_player_name()) == false then
			minetest.set_node(pointed_thing.above, {name="taverna_barbara:node_cerveja"})
			minetest.sound_play("default_glass_footstep", {pos = pointed_thing.above, max_hear_distance = 5, gain = 7.0,})
			itemstack:take_item(1)
		end
		return itemstack
	end,
})
if hbhunger then
	hbhunger.register_food("taverna_barbara:cerveja", taverna_barbara.saciamento_cerveja, "macronodes:garrafa_vidro", nil, 2, "taverna_barbara_bebendo_garrafa_de_vidro")
end

-- Whisky
minetest.register_craftitem("taverna_barbara:whisky", {
	description = "Whisky",
	inventory_image = "taverna_barbara_whisky.png",
	stack_max = 1,
	on_use = core.item_eat(taverna_barbara.saciamento_whisky),
	on_place = function(itemstack, placer, pointed_thing)
		if minetest.is_protected(pointed_thing.above, placer:get_player_name()) == false then
			minetest.set_node(pointed_thing.above, {name="taverna_barbara:node_whisky"})
			minetest.sound_play("default_glass_footstep", {pos = pointed_thing.above, max_hear_distance = 5, gain = 7.0,})
			itemstack:take_item(1)
		end
		return itemstack
	end,
})
if hbhunger then
	hbhunger.register_food("taverna_barbara:whisky", taverna_barbara.saciamento_whisky, "macronodes:garrafa_vidro", nil, 4, "taverna_barbara_bebendo_garrafa_de_vidro")
end

-- Amendoim Crocante
minetest.register_craftitem("taverna_barbara:amendoim", {
	description = "Amendoim Crocante",
	inventory_image = "taverna_barbara_amendoim.png",
	stack_max = 20,
	on_use = core.item_eat(taverna_barbara.saciamento_amendoim),
})
if hbhunger then
	hbhunger.register_food("taverna_barbara:amendoim", taverna_barbara.saciamento_amendoim, nil, nil, nil, "taverna_barbara_comendo_amendoim")
end

-- Balinha Sortida
minetest.register_craftitem("taverna_barbara:balinha_sortida", {
	description = "Balinha Sortida",
	inventory_image = "taverna_barbara_balinha_sortida_inv.png",
	wield_image = "taverna_barbara_balinha_sortida.png",
	stack_max = 20,
	on_use = core.item_eat(taverna_barbara.saciamento_balinha_sortida)
})
if hbhunger then
	hbhunger.register_food("taverna_barbara:balinha_sortida", taverna_barbara.saciamento_balinha_sortida, nil, nil, nil, "taverna_barbara_balinha_sortida")
end

-- Batanoura Defumada (Cruzamento de Batata com Cenoura)
minetest.register_craftitem("taverna_barbara:batanoura_defumada", {
	description = "Batanoura Defumada (Cruzamento de Batata com Cenoura)",
	inventory_image = "taverna_barbara_batanoura_defumada.png",
	stack_max = 10,
	on_use = core.item_eat(taverna_barbara.saciamento_batanoura_defumada)
})
if hbhunger then
	hbhunger.register_food("taverna_barbara:batanoura_defumada", taverna_barbara.saciamento_batanoura_defumada)
end
