# sudo screen -S servertest -t "Main Server" -c screenconf -d -m -s bash
# sudo screen -S devtest -t "Dev Server" -c screenconf -d -m -s bash

sudo screen -S server -t "Main Server" -c screenconf sh -c 'echo Main Server; cd /minecraft/main; exec bash'
sudo screen -S dev -t "Dev Server" -c screenconf sh -c 'echo Dev Server; cd /minecraft/dev; exec bash'

