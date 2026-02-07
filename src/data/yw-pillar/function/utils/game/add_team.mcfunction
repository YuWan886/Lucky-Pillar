team add Red {text:"红队"}
team modify Red color red
team modify Red prefix {text:"[红队]",color:"red"}
team modify Red collisionRule pushOwnTeam
team modify Red friendlyFire false

team add Blue {text:"蓝队"}
team modify Blue color blue
team modify Blue prefix {text:"[蓝队]",color:"blue"}
team modify Blue collisionRule pushOwnTeam
team modify Blue friendlyFire false
# src\data\yw-pillar\modules\utils\game.bolt