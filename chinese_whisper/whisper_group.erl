-module(whisper_group). 
-export([setup/1]). 


setup(Players) when Players>1 -> 
	LastPlayer=whisper:start(Players, rand:uniform()),
	setup(Players-1,LastPlayer). 

setup(Players, Neighbour) when Players>=1 -> 
	CurrentPlayer=whisper:start(Players, rand:uniform(),Neighbour),
	setup(Players-1,CurrentPlayer);
setup(0, Player) -> Player. 


