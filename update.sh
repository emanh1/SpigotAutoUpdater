#!/bin/sh
cd /home/minecraft
mkdir tempdl
cd tempdl
 
wget http://ci.md-5.net/job/Spigot/lastSuccessfulBuild/artifact/Spigot-Server/target/spigot.jar #Download the latest version of Spigot
wget http://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar #Download the latest version of BungeeCord
 
#Copy the .jars to the server folders
#You can change where the jars will be placed
cp spigot.jar /home/minecraft/economy/spigot.jar
cp spigot.jar /home/minecraft/factions/spigot.jar
cp spigot.jar /home/minecraft/hungergames/spigot.jar
cp spigot.jar /home/minecraft/minigames/spigot.jar
cp spigot.jar /home/minecraft/dev/spigot.jar
cp BungeeCord.jar /home/minecraft/bungee/BungeeCord.jar
 
#Remove the .jars we just downloaded
rm -rf /home/minecraft/tempdl
