#!/bin/sh

# в первом же окне будет UI AcePHProxy-демона
screen -dmS ace -t ace sh -c "/usr/bin/php /usr/local/src/AcePHProxy/acePHP.php"

OPTIONS="--client-console --live-cache-size 20000000 --upload-limit 100 --max-upload-slots 5 --live-buffer 40 --download-limit 2000 --cache-dir /STORAGE/FILES/.ACEStream --vod-buffer 40"

# также надо запустить ace server
/usr/bin/acestreamengine $OPTIONS
# # в первом же окне будет UI AcePHProxy-демона
# screen -dmS ace -t ace sh -c "/usr/bin/php /usr/local/src/AcePHProxy/acePHP.php 2>&1 /tmp/ace.log"

# /usr/bin/supervisord -c /etc/supervisor/supervisor.conf
# /usr/bin/acestreamengine --client-console --log-stdout --bind-all