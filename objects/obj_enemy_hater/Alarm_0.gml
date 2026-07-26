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
    "total mess", "where fun?", "game over", "sad attempt", "big yikes", "Is this yellow paint?",
"Are these PS1 graphics?",
"Where is Ray Tracing?",
"0/10 unoptimized, lost 2 FPS",
"Looks like a mobile game from 2012",
"Asset flip detected!",
"Unreal Engine 5 could never",
"Soulslike are better",
"Darksouls is better",
"Is there hard mode?",
"No dodge roll with i-frames? Cringe",
"Skill issue on the dev side",
"Not Miyazaki btw",
"Where is battlepass?",
"No NFTs?",
"Woke ass game",
"No gacha mechanics? I'm out",
"Where is the $100 Pre-Order Deluxe Edition?",
"Pay 2 win when?",
"I could code this in 5 minutes",
"Spaghetti code detected",
"Did you submit 2 minutes before deadline?",
"Default GM lookin ass",
"GDD was written on a napkin",
"It's not a bug, it's a feature... right?"
);
array_push(global.chat_messages, nickname + ": " + msg);

if (array_length(global.chat_messages) > 50) {
	array_delete(global.chat_messages, 0, 1);
}

alarm[0] = room_speed * 2;