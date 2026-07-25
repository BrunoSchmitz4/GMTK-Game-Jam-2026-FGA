instance_create_layer(x, y, "enemys", obj_enemy_shot);

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
    "total mess", "where fun?", "game over", "sad attempt", "big yikes"
);
array_push(global.chat_messages, nickname + ": " + msg);

if (array_length(global.chat_messages) > 50) {
	array_delete(global.chat_messages, 0, 1);
}

alarm[0] = room_speed * 2;