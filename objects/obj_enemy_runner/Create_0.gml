/// @description Init Vars

enum state {
	wander,
	runner
}

mode = state.wander;

dirTar = irandom(360); // Pick a random direction
lerpSpeed = random(6);

alarm[7] = random_range(100, 500);












