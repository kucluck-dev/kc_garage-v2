fx_version 'adamant'
game 'gta5'
lua54 'yes'

name 'Kucluck Garage V2'
description 'Advanced Garages for ESX & QB V2'
author 'Lukman_Nov#5797'
version '1.0.6'

shared_scripts {
	'@ox_lib/init.lua',
	'locales.lua',
	'shared/config.lua',
	'shared/framework.lua',
	'shared/garages.lua',
	'shared/impounds.lua',
	'shared/functions.lua',
	'locales/*.lua'
}

client_scripts {
	'bridge/**/client.lua',
	'client/main.lua',
	'client/function.lua',
	'client/mainAPI.lua',
	'client/deformation.lua',
	'client/vehicle_names.lua',
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'bridge/**/server.lua',
	'server/mainAPI.lua',
	'server/main.lua',
	'server/update.lua',
}

ui_page "web/index.html"

files {
	"web/assets/*",
	"web/assets/**/*",
	"web/index.html",
	"web/script.js",
	"web/style.css",
}

escrow_ignore {
	'bridge/**/*.lua',
	'client/*.lua',
	'locales/*.lua',
	'server/main.lua',
	'server/mainAPI.lua',
	'shared/*.lua',
}
