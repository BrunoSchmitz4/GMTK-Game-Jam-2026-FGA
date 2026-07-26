instance_create_layer(x, y + 20, "enemys", obj_enemy_shot);

var msg = choose(
    "trash game", "so bad lol", "my eyes hurt", "boring af", "delete this",
    "unplayable", "npc moment", "zero skill", "L post", "cringe",
    "refund please", "uninstalling", "is this real?", "worst ever", "skill issue",
    "mid at best", "flop", "bro wtf", "nice lag", "clown moment",
    "404 fun lost", "pls stop", "who made this?", "bad design", "sleeping zzz",
    "rage quit", "my cat plays >", "embarrassing", "skip it", "pure copium",
    "so laggy", "0/10 gameplay", "fake hype", "literally bad", "just stop",
    "waste of space", "brain rot", "hard pass", "disaster lol", "not cooking",
    "npc energy", "try again", "terrible code", "bro thought", "major L",
    "total mess", "where fun?", "game over", "sad attempt", "big yikes", "Is this yellow \npaint?",
"Are these PS1 \ngraphics?",
"Where is Ray \nTracing?",
"0/10 unoptimized, \nlost 2 FPS",
"Looks like a mobile \ngame from 2012",
"Asset flip detected!",
"Unreal Engine 5 \ncould never",
"Soulslike are better",
"Darksouls is better",
"Is there hard mode?",
"No dodge roll with \ni-frames? Cringe",
"Skill issue on the \ndev side",
"Not Miyazaki btw",
"Where is battlepass?",
"No NFTs?",
"Woke ass game",
"No gacha mechanics? \nI'm out",
"Where is the $100 \nPre-Order Deluxe \nEdition?",
"Pay 2 win when?",
"I could code this \nin 5 minutes",
"Spaghetti code\n detected",
"Did you submit 2 minutes\n before deadline?",
"Default GM lookin ass",
"GDD was written on \na napkin",
"It's not a bug, \nit's a feature... \nright?"
);
array_push(global.chat_messages, nickname + ": " + msg);

if (array_length(global.chat_messages) > 50) {
	array_delete(global.chat_messages, 0, 1);
}

alarm[0] = room_speed * 2;