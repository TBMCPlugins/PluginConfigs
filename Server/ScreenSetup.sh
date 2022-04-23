sudo screen -dmS v5
sudo screen -dmS v4
sudo screen -dmS dev
sudo screen -dmS bungee

# Too lazy to make a loop in bash
sudo screen -S v5 -p 0 -X multiuser on
sudo screen -S v5 -p 0 -X acladd norbipeti
sudo screen -S v5 -p 0 -X acladd ghostise
sudo screen -S v5 -p 0 -X acladd iie
sudo screen -S v5 -p 0 -X acladd gryph667
sudo screen -S v5 -p 0 -X stuff "cd /minecraft/v5^M"

sudo screen -S v4 -p 0 -X multiuser on
sudo screen -S v4 -p 0 -X acladd norbipeti
sudo screen -S v4 -p 0 -X acladd ghostise
sudo screen -S v4 -p 0 -X acladd iie
sudo screen -S v4 -p 0 -X acladd gryph667
sudo screen -S v4 -p 0 -X stuff "cd /minecraft/v4^M"

sudo screen -S dev -p 0 -X multiuser on
sudo screen -S dev -p 0 -X acladd norbipeti
sudo screen -S dev -p 0 -X acladd ghostise
sudo screen -S dev -p 0 -X acladd iie
sudo screen -S dev -p 0 -X acladd gryph667
sudo screen -S dev -p 0 -X stuff "cd /minecraft/dev^M"

sudo screen -S bungee -p 0 -X multiuser on
sudo screen -S bungee -p 0 -X acladd norbipeti
sudo screen -S bungee -p 0 -X acladd ghostise
sudo screen -S bungee -p 0 -X acladd iie
sudo screen -S bungee -p 0 -X acladd gryph667
sudo screen -S bungee -p 0 -X stuff "cd /minecraft/bungee^M"

