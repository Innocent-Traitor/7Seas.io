/// @description Init Vars

enum e_state {
	wander,
	runner,
	hunter
}

mode = state.wander;

dirTar = irandom(360); // Pick a random direction
lerpSpeed = random(6);


alarm[7] = random_range(100, 500);














