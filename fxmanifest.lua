fx_version 'cerulean'
game 'gta5'

author 'asciidude'
description 'MasterEAS: A standalone Emergency Alert System (EAS) plugin built for any server'
version '1.0.0'

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua'
}

shared_scripts {
    'config.lua',
    'functions/**.*'
}

-- NUI

ui_page 'nui/index.html'

files {
    'nui/index.html',
    'nui/style.css',
    'nui/script.js',
    'nui/images/**.*',
}