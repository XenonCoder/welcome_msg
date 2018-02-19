--[[
 Copyright © 2018, Stefano Peris

 eMail: <xenon77.dev@gmail.com>
 Github: <https://github.com/XenonCoder>

 GNU GENERAL PUBLIC LICENSE
 Version 3, 29 June 2007

 Copyright (C) 2007 Free Software Foundation, Inc. <http://fsf.org/>
 Everyone is permitted to copy and distribute verbatim copies
 of this license document, but changing it is not allowed.
]]--

welcome_msg = {}

-- SETTINGS 

-- Message that appears on the form when accessing the server
welcome_msg.welcome = "Message...";

--[[
welcome_msg.players = {};
local worldpath = minetest.get_worldpath();
]]--

minetest.register_on_joinplayer(function(player) 
	local name = player:get_player_name(); if name == nil then return end
	
	-- read player inventory data
	local form = "size [6,4] textarea[0,0;6.6,7;help;*** Form title ***;".. welcome_msg.welcome.."]" ..
	"button_exit[5,1.1;1,6;exit;Ok]"
	        -- minetest.chat_send_player(name, form_msg.welcome);
			minetest.show_formspec(name, "welcome_msg:welcome", form)
end)
