description 'A consumables script for an ox_inventory / pc-needs / rpemotes / ESX environment.'
version '0.0.1'
fx_version 'cerulean'
game 'gta5'
lua54 'yes'

shared_scripts {
    '@es_extended/imports.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'config.lua',
    'server/main.lua',
}

client_scripts {
    '@ox_lib/init.lua',
    'client/main.lua',
}

dependencies {
    'oxmysql',
    'pc-needs',
    'rpemotes',
}
