--[[
	Mod Taverna_Barbara para Minetest
	Copyright (C) 2017 BrunoMine (https://github.com/BrunoMine)
	
	Recebeste uma cópia da GNU Lesser General
	Public License junto com esse software,
	se não, veja em <http://www.gnu.org/licenses/>. 
	
	Nodes
	
  ]]

-- Placa da taverna barbara
minetest.register_node("taverna_barbara:placa", {
	description = "Placa de Taverna Barbara",
	drawtype = "nodebox",
	tiles = {
		"taverna_barbara_placa_lado.png", -- Cima
		"taverna_barbara_placa_lado.png", -- Baixo
		"taverna_barbara_placa_lado.png", -- Lado direito
		"taverna_barbara_placa_lado.png", -- Lado esquerda
		"taverna_barbara_placa_lado.png", -- Fundo
		"default_pine_wood.png^taverna_barbara_placa.png" -- Frente
	},
	inventory_image = "taverna_barbara_placa.png",
	wield_image = "taverna_barbara_placa.png",
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0.4375, 0.5, 0.375, 0.5},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.125, 0.4375, 0.5, 0.25, 0.5}, -- NodeBox1
			{-0.4375, -0.3125, 0.4375, 0.4375, -0.0625, 0.5}, -- NodeBox2
			{-0.375, -0.375, 0.4375, 0.375, -0.25, 0.5}, -- NodeBox3
			{-0.3125, -0.4375, 0.4375, 0.3125, -0.1875, 0.5}, -- NodeBox4
			{-0.25, -0.5, 0.4375, 0.25, -0.3125, 0.5}, -- NodeBox5
			{-0.375, 0, 0.4375, 0.375, 0.3125, 0.5}, -- NodeBox6
			{-0.25, 0.0625, 0.4375, 0.25, 0.375, 0.5}, -- NodeBox7
		}
	},
	groups = {choppy=2,oddly_breakable_by_hand=2},
	sounds = default.node_sound_defaults(),
})

minetest.register_node("taverna_barbara:expositor_amendoim", {
	description = "Expositor de Amendoim Crocante",
	tiles = {
		"default_pine_wood.png^taverna_barbara_expositor_amendoim_cima.png", -- Cima
		"default_pine_wood.png", -- Baixo
		"default_pine_wood.png^taverna_barbara_expositor_amendoim_direita.png", -- Lado direito
		"default_pine_wood.png^taverna_barbara_expositor_amendoim_esquerda.png", -- Lado esquerda
		"default_pine_wood.png^taverna_barbara_expositor_amendoim_fundo.png", -- Fundo
		"default_pine_wood.png^taverna_barbara_expositor_amendoim_frente.png" -- Frente
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.4375, 0.4375, -0.4375, 0.4375}, -- Base_1
			{-0.375, -0.4375, 0.125, -0.1875, -0.125, 0.3125}, -- Caixa_1
			{-0.375, -0.4375, -0.375, -0.1875, -0.125, -0.1875}, -- Caixa_2
			{-0.375, -0.4375, -0.125, -0.1875, -0.125, 0.0625}, -- Caixa_3
			{-0.125, -0.4375, -0.375, 0.0625, -0.125, -0.1875}, -- Caixa_4
			{-0.125, -0.4375, -0.125, 0.0625, -0.125, 0.0625}, -- Caixa_5
			{-0.125, -0.4375, 0.125, 0.0625, -0.125, 0.3125}, -- Caixa_6
			{0.125, -0.4375, -0.375, 0.3125, -0.125, -0.1875}, -- Caixa_7
			{0.125, -0.4375, -0.125, 0.3125, -0.125, 0.0625}, -- Caixa_8
			{0.125, -0.4375, 0.125, 0.3125, -0.125, 0.3125}, -- Caixa_9
			{0.375, -0.5, 0.375, 0.4375, 0.25, 0.4375}, -- Mastro
			{-0.3125, -0.0625, 0.375, 0.375, 0.25, 0.4375}, -- Bandeira
		}
	},
	groups = {attached_node=1,choppy=2,oddly_breakable_by_hand=2},
	sounds = default.node_sound_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Amendoim Crocante") -- infotext pode ser serializado
	end,
	on_rightclick = function(pos, node, player)
		minetest.show_formspec(player:get_player_name(), "taverna_barbara:expositor_amendoim", 
			"size[3,3]"
			.."item_image_button[0,0;3,3;taverna_barbara:amendoim;comprar;]"
		)
	end,
})

		
-- Expositor de Balinhas
minetest.register_node("taverna_barbara:expositor_balinhas", {
	description = "Expositor de Balinhas",
	tiles = {
		"default_pine_wood.png^taverna_barbara_expositor_balinhas_cima.png", -- Cima
		"default_pine_wood.png^taverna_barbara_expositor_balinhas_baixo.png", -- Baixo
		"default_pine_wood.png^taverna_barbara_expositor_balinhas_direita.png", -- Lado direito
		"default_pine_wood.png^taverna_barbara_expositor_balinhas_esquerda.png", -- Lado esquerda
		"default_pine_wood.png^taverna_barbara_expositor_balinhas_fundo.png", -- Fundo
		"default_pine_wood.png^taverna_barbara_expositor_balinhas_frente.png" -- Frente
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.0625, 0.4375, -0.4375, 0.0625}, -- Base_1
			{-0.25, -0.4375, -0.25, 0.25, 0, 0.25}, -- Torre
			{-0.3125, 0.0625, -0.0625, 0.3125, 0.3125, 0.0625}, -- Placa
			{-0.0625, 0, -0.0625, 0.0625, 0.0625, 0.0625}, -- Mastro
			{-0.3125, -0.125, 0.0625, 0.3125, -0.0625, 0.1875}, -- Bala_1
			{-0.3125, -0.125, -0.1875, 0.3125, -0.0625, -0.0625}, -- Bala_2
			{-0.3125, -0.25, 0.0625, 0.3125, -0.1875, 0.1875}, -- Bala_3
			{-0.3125, -0.25, -0.1875, 0.3125, -0.1875, -0.0625}, -- Bala_4
			{-0.0625, -0.5, -0.4375, 0.0625, -0.4375, 0.4375}, -- Base_2
			{-0.3125, -0.375, -0.1875, 0.3125, -0.3125, -0.0625}, -- Bala_5
			{-0.3125, -0.375, 0.0625, 0.3125, -0.3125, 0.1875}, -- Bala_6
			{0.0625, -0.375, -0.3125, 0.1875, -0.3125, 0.3125}, -- Bala_7
			{-0.1875, -0.375, -0.3125, -0.0625, -0.3125, 0.3125}, -- Bala_8
			{-0.1875, -0.25, -0.3125, -0.0625, -0.1875, 0.3125}, -- Bala_9
			{0.0625, -0.25, -0.3125, 0.1875, -0.1875, 0.3125}, -- Bala_10
			{-0.1875, -0.125, -0.3125, -0.0625, -0.0625, 0.3125}, -- Bala_11
			{0.0625, -0.125, -0.3125, 0.1875, -0.0625, 0.3125}, -- Bala_12
		}
	},
	groups = {attached_node=1,choppy=2},
	sounds = default.node_sound_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Balinhas Sortidas") -- infotext pode ser serializado
	end,
	on_rightclick = function(pos, node, player)
		minetest.show_formspec(player:get_player_name(), "taverna_barbara:expositor_balinhas", 
			"size[3,3]"
			.."item_image_button[0,0;3,3;taverna_barbara:balinha_sortida;comprar;]"
		)
	end,
})

-- receptor dos botoes dos expositores
minetest.register_on_player_receive_fields(function(player, formname, fields)
	if formname == "taverna_barbara:expositor_balinhas" then
		if fields.comprar then
			local sender_name = player:get_player_name()
			local sender_inv = player:get_inventory()
			if not sender_inv:contains_item("main", "currency:macro 1") then
				minetest.chat_send_player(sender_name, "Voce precisa de macros para comprar Balinha Sortida")
				return
			elseif not sender_inv:room_for_item("main", "taverna_barbara:balinha_sortida 1") then
				minetest.chat_send_player(sender_name, "Inventario Lotado")
				return
			end
			-- retirando itens do inventario
			local i = 0
			while i < tonumber(1) do -- 1 eh o tanto que quero tirar
				sender_inv:remove_item("main", "currency:macro 1") -- tira 1
				i = i + 1
			end
			sender_inv:add_item("main", "taverna_barbara:balinha_sortida 1")
		end
	elseif formname == "taverna_barbara:expositor_amendoim" then
		if fields.comprar then
			local sender_name = player:get_player_name()
			local sender_inv = player:get_inventory()
			if not sender_inv:contains_item("main", "currency:macro 1") then
				minetest.chat_send_player(sender_name, "Voce precisa de macros para comprar Amendoim Crocante")
				return
			elseif not sender_inv:room_for_item("main", "taverna_barbara:amendoim 1") then
				minetest.chat_send_player(sender_name, "Inventario Lotado")
				return
			end
			-- retirando itens do inventario
			local i = 0
			while i < tonumber(1) do -- 1 eh o tanto que quero tirar
				sender_inv:remove_item("main", "currency:macro 1") -- tira 1
				i = i + 1
			end
			sender_inv:add_item("main", "taverna_barbara:amendoim 1")
		end
	end
end)

-- Node Garrafa de Cerveja (decorativo)
minetest.register_node("taverna_barbara:node_cerveja", {
	description = "Garrafa de Cerveja",
	tiles = {
		"taverna_barbara_garrafa_cerveja_cima.png", -- cima
		"taverna_barbara_garrafa_cerveja_baixo.png", -- baixo
		"taverna_barbara_garrafa_cerveja_lado2.png", -- direita
		"taverna_barbara_garrafa_cerveja_lado2.png", -- esquerda
		"taverna_barbara_garrafa_cerveja_lado1.png", -- fundo
		"taverna_barbara_garrafa_cerveja_lado1.png" -- frente
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.125, 0.125}, -- Centro
			{-0.1875, -0.4375, -0.0625, 0.1875, 0, 0.0625}, -- Face_1
			{-0.0625, -0.4375, -0.1875, 0.0625, 0, 0.1875}, -- Face_2
			{-0.0625, -0.5, -0.0625, 0.0625, 0.375, 0.0625}, -- tubo_fino
		}
	},
	drop = "taverna_barbara:cerveja",
	groups = {attached_node=1,choppy=2,dig_immediate=3,not_in_creative_inventory=1},
	sounds = default.node_sound_defaults(),
})

-- Node Garrafa de Whisky (decorativo)
minetest.register_node("taverna_barbara:node_whisky", {
	description = "Garrafa de Whisky",
	tiles = {
		"taverna_barbara_garrafa_whisky_cima.png", -- cima
		"taverna_barbara_garrafa_whisky_baixo.png", -- baixo
		"taverna_barbara_garrafa_whisky_lado2.png", -- direita
		"taverna_barbara_garrafa_whisky_lado2.png", -- esquerda
		"taverna_barbara_garrafa_whisky_lado1.png", -- fundo
		"taverna_barbara_garrafa_whisky_lado1.png" -- frente
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.1875, 0.1875, 0, 0.1875}, -- Corpo
			{-0.125, -0.25, -0.125, 0.125, 0.0625, 0.125}, -- Face_superior
			{-0.0625, -0.0625, -0.0625, 0.0625, 0.375, 0.0625}, -- tubo_fino
		}
	},
	drop = "taverna_barbara:whisky",
	groups = {attached_node=1,choppy=2,dig_immediate=3,not_in_creative_inventory=1},
	sounds = default.node_sound_defaults(),
})

