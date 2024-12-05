extends Node

## this is a global scene  

#tells player when he is reciving damage 
signal health_changed

#tells player what value of coin is received 
signal coin_received 

#starts death animation and restarts game 
signal on_death

## signals for potions :: 

signal on_health_healed


## attack signals 

#signal attacking
