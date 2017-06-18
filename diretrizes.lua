--[[
	Mod Taverna_Barbara para Minetest
	Copyright (C) 2017 BrunoMine (https://github.com/BrunoMine)
	
	Recebeste uma cópia da GNU Lesser General
	Public License junto com esse software,
	se não, veja em <http://www.gnu.org/licenses/>. 
	
	Diretrizes
	
  ]]

--[[
	Configure apenas nos locais indicados	
  ]]


-- Raridade de tavernas bárbaras no mapa
--[[
	Ao menos 1 ofeta deve estar disponivel nessa lista/tabela
		* Apenas numeros inteiros
		* Raridade de 1 em N (valor definidos)
		* Quanto maior, mais raro
		* Valor mínimo é 1
  ]]
local RARIDADE = 15 -- recomendado 15


-- Tempo para um trambiqueiro oferecer outra troca (em segundos)
local TEMPO_PARA_NOVO_TRAMBIQUE = 600 -- 10 minutos


-- Trocas oferecidas pelos trambiqueiros 
--[[
	Ao menos 1 ofeta deve estar disponivel nessa lista/tabela
	Todas ofertas devem seguir o exemplo
		* Apenas 1 tipo de item para custo e 1 tipo para oferta
		* A quantidade (número) deve estar sempre após a string/id do item separado por um espaço " "
  ]]
local OFERTAS_TRAMBIQUEIRO = {
	-- exemplo
	-- {custo = "currency:macro 1", item = "default:paper 3"},
	{custo = "macromoney:macro 5", item = "default:mese_crystal 1"},
	{custo = "macromoney:macro 2", item = "esqueiro:esqueiro 1"},
	{custo = "macromoney:macro 10", item = "oficios_pacotes_estruturais:cabana_simples 1"},
	{custo = "macromoney:macro 5", item = "shields:shield_enhanced_wood 1"},
	{custo = "macromoney:macro 15", item = "default:pick_diamond 1"},
}



-- Quantidade de arquivos de tavernas
local QUANTIDADE_TAVERNAS = 2



-- Gerenciador das areas protegidas das tavernas
local GERENTE_AREAS = "BrunoMine"



--
-- Ajuste de dados 
--
taverna_barbara.trambiqueiro = {
	ofertas = OFERTAS_TRAMBIQUEIRO,
	tempo_restauro_trambique = TEMPO_PARA_NOVO_TRAMBIQUE
}
taverna_barbara.raridade = RARIDADE
taverna_barbara.qtd_arquivos = QUANTIDADE_TAVERNAS
taverna_barbara.gerente_areas = GERENTE_AREAS
