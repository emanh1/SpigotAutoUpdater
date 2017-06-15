# SpigotAutoUpdater
A shell script to auto-updates your spigot.jar file


This was originally made by <a href="https://www.spigotmc.org/members/riotshielder.51">RiotShielder</a> of SpigotMC forum, aka <a href="https://github.com/ShepherdJerred">ShepherdJerred</a>


```
#!/bin/sh
cd /home/minecraft
mkdir tempdl
cd tempdl
 
wget http://ci.md-5.net/job/Spigot/lastSuccessfulBuild/artifact/Spigot-Server/target/spigot.jar #Download the latest version of Spigot
wget http://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar #Download the latest version of BungeeCord
 
#Copy the .jars to the server folders
cp spigot.jar /home/minecraft/economy/spigot.jar
cp spigot.jar /home/minecraft/factions/spigot.jar
cp spigot.jar /home/minecraft/hungergames/spigot.jar
cp spigot.jar /home/minecraft/minigames/spigot.jar
cp spigot.jar /home/minecraft/dev/spigot.jar
cp BungeeCord.jar /home/minecraft/bungee/BungeeCord.jar
 
#Remove the .jars we just downloaded
rm -rf /home/minecraft/tempdl
```
