#!/bin/sh
sqlite3 x-ui.db <<EOF
UPDATE inbounds SET settings = REPLACE(settings, 'xtls-rprx-direct', 'xtls-rprx-vision')  where stream_settings like '%xtls%'
UPDATE inbounds SET stream_settings = REPLACE(settings, 'xtls', 'tls')  where stream_settings like '%xtls%'
UPDATE inbounds SET settings = REPLACE(settings, '"flow": "xtls-rprx-direct",', '') where protocol= 'trojan'

EOF