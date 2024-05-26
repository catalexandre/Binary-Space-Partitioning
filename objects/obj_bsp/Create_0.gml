randomize();

n = 10; //This is the number of subdivisions
m = 80; //This is the size of the map
size = 8; //Minimum size rooms need to be
margin = 2; //Distance around each room

rooms = [];

//Initializing the first room which all other rooms will be derived from
rooms[0][0] = m; //Width
rooms[0][1] = m; //Height
rooms[0][2] = 0; //Position in x
rooms[0][3] = 0; //Position in y

starting_room = 0;

enum ALGORITHM
{
	PARTITIONING,
	GENERATING
}

state = ALGORITHM.PARTITIONING;

zoom = 100;