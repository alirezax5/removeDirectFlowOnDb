#!/bin/sh
sqlite3 x-ui.db <<EOF
UPDATE inbounds SET settings = REPLACE(settings, '"flow": "xtls-rprx-direct",', '')
EOF