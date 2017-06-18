--[[
	Mod Taverna_Barbara para Minetest
	Copyright (C) 2017 BrunoMine (https://github.com/BrunoMine)
	
	Recebeste uma cópia da GNU Lesser General
	Public License junto com esse software,
	se não, veja em <http://www.gnu.org/licenses/>. 
	
	Comandos
	
  ]]

local modpath = minetest.get_modpath("taverna_barbara")

-- Comando de serializar estrutura
minetest.register_chatcommand("taverna_barbara", {
	privs = {server=true},
	params = "[<s> <numero> | Serializar uma estrutura com sulfixo <numero> || <d> <numero> | Deserializar uma estrutura com sulfixo <numero>]",
	description = "Serializa e Desarializar uma estrutura",
	func = function(name,  param)
		local m = string.split(param, " ")
		local param1, param2 = m[1], m[2]
		if param1 == "s" then
			
			if tonumber(param2) then
				local player = minetest.get_player_by_name(name)
				local pos = player:getpos()
				local arquivo = modpath .. "/estruturas/taverna_barbara_"..param2..".mts"
				minetest.create_schematic(pos, {x=pos.x+11, y=pos.y+14, z=pos.z+11}, {}, arquivo)
				minetest.chat_send_player(name, "Estrutura de taverna barbara "..param2.." salva com sucesso")
			else
				minetest.chat_send_player(name, "Numero de estrutura invalida")
			end
			
		elseif param1 == "d" then
		
			if tonumber(param2) then
				local player = minetest.get_player_by_name(name)
				local pos = player:getpos()
				local arquivo = modpath .. "/estruturas/taverna_barbara_"..param2..".mts"
				minetest.place_schematic(pos, arquivo, nil, nil, true)
				minetest.chat_send_player(name, "Estrutura de taverna barbara "..param2.." criada com sucesso")
			else
				minetest.chat_send_player(name, "Numero de estrutura invalida")
			end
		else
			minetest.chat_send_player(name, "Comando invalido")
		end
	end
})

-- Comando de deserializar estrutura
minetest.register_chatcommand("d", {
	privs = {server=true},
	params = "[<arquivo/nome> <largura> <altura>]",
	description = "Deserializa uma estrutura",
	func = function(name,  param)
		local m = string.split(param, " ")
		local param1, param2, param3 = m[1], m[2], m[3]
		if param1 then
			local player = minetest.get_player_by_name(name)
			local pos = player:getpos()
			if gestor.estruturador.carregar(pos, param1, param2, param3, modpath) then
				minetest.chat_send_player(name, "Estrutura deserializada com sucesso")
			else
				minetest.chat_send_player(name, "Falha ao deserializar estrutura")
			end
		else
			minetest.chat_send_player(name, "Comando invalido")
		end
	end
})
