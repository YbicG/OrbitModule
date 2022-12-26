# OrbitModule
This can help with rotating around an object

# FUNCTIONS

## CircularOrbit - Orbits a position in a circular movement.
   ### PARAMETERS
		Part -> Part to be rotated.
		Time -> Time until completion.
		Speed -> Speed at which to rotate at.
		Radius -> The size to make the cirle.
		RotateAroundPos -> Position for Part to rotate around.
		OrbitDirection -> Direction to rotate in. Valid Directions are "clockwise" and "counterclockwise".
		isSpiraling -> If true move in a spiral.
		SpiralWidth -> Width between spirals.
		
## TriangularOrbit - Orbits a position in a triangular movement.
	### ARGS:
		Part -> Part to be rotated.
		Time -> Time until completion.
		Width -> Size to make the triangle. Roughly equivalent to a radius of a circle.
		RotateAroundPos -> Position for Part to rotate around.
		Speed -> Speed at which to rotate.
		OrbitDirection -> Direction to rotate in. Valid Directions are "clockwise" and "counterclockwise".
		
## RectangularOrbit - Orbits a position in a rectangular movement.
	### ARGS:
		Part -> Part to be rotated.
		Time -> Time until completion.
		Width -> Size to make the rectangle. Roughly equivalent to a radius of a circle.
		RotateAroundPos -> Position for Part to rotate around.
		Speed -> Speed at which to rotate.
		OrbitDirection -> Direction to rotate in. Valid Directions are "clockwise" and "counterclockwise".
		
## SquareOrbit - Orbits a position in a square movement.
	### ARGS:
		Part -> Part to be rotated.
		Time -> Time until completion.
		Width -> Size to make the square. Roughly equivalent to a radius of a circle.
		RotateAroundPos -> Position for Part to rotate around.
		Speed -> Speed at which to rotate.
		OrbitDirection -> Direction to rotate in. Valid Directions are "clockwise" and "counterclockwise".		
