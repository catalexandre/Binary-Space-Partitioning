# Binary-Space-Partitioning
The visualization of the binary space partitioning algorithm used in my multiplayer video game project.

This algorithm is used to generate rooms that do not overlap. There are many many many dungeon generation algorithms that already exist but this is my own implementation of the binary space partitioning algorithm.

The reason why I chose to use this algorithm to generate the rooms of the dungeons in my game is because it is such a simple algorithm that can generate results just as nice as some other much more complicated algorithms that exist. Granted, the binary space partitioning algorithm does require some tweaking to generate nice results but is still quite efficient out of the box.

## How the algorithm works
1. Create a giant room that will take up as much space as area you want to be able to encapsulate your map
2. Select a room at random and split it in the horizontal or vertical way, choose randomly
3. repeat step two however many times you wish

Indeed, the algorithm is very simple, but it's beauty comes from tweaking it and adding restrictions to it.
