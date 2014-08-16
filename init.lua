-- Minetest 0.4 mod: dropped

-- Definir o spawn
spawn = {x = 100, y = 20, z = 100}

minetest.register_chatcommand("morrer", {
    description = "Mata Voce",
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        local invref = player:get_inventory()
        if invref:is_empty("main") then
            if invref:is_empty("craft") then
                player:setpos(spawn)
                player:set_hp(20)
            else
                player:set_hp(0)
                minetest.chat_send_player(name, "Caso voce nao esteja no spawn digite /morrer novamente.")
            end
        else
            player:set_hp(0)
            minetest.chat_send_player(name, "Caso voce nao esteja no spawn digite /morrer novamente.") 
        end
    end
})
