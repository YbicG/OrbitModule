# OrbitModule
This can help with rotating around an object. 

## Scripts:

Clockwise Script:

![image](https://user-images.githubusercontent.com/82431866/209570033-ea448203-e69a-49d8-be04-ef7edcad66bb.png)

Counterclockwise Script:

![image](https://user-images.githubusercontent.com/82431866/209570104-ff57fd29-696e-45b0-a087-9b96a17c30f0.png)

Result:

[VIDEO](https://user-images.githubusercontent.com/82431866/209569700-5098a999-db32-4b37-af51-4cf1c1348e28.mp4)

# FUNCTIONS

## CircularOrbit - Orbits a position in a circular movement.
   #### PARAMETERS
	Part -> Part to be rotated.
	Time -> Time until completion.
	Speed -> Speed at which to rotate at.
	Radius -> The size to make the cirle.
	RotateAroundPos -> Position for Part to rotate around.
	OrbitDirection -> Direction to rotate in. Valid Directions are "clockwise" and "counterclockwise".
	isSpiraling -> If true move in a spiral.
	SpiralWidth -> Width between spirals.
		
## TriangularOrbit - Orbits a position in a triangular movement.
   #### PARAMETERS
	Part -> Part to be rotated.
	Time -> Time until completion.
	Width -> Size to make the triangle. Roughly equivalent to a radius of a circle.
	RotateAroundPos -> Position for Part to rotate around.
	Speed -> Speed at which to rotate.
	OrbitDirection -> Direction to rotate in. Valid Directions are "clockwise" and "counterclockwise".
		
## RectangularOrbit - Orbits a position in a rectangular movement.
   #### PARAMETERS
	Part -> Part to be rotated.
	Time -> Time until completion.
	Width -> Size to make the rectangle. Roughly equivalent to a radius of a circle.
	RotateAroundPos -> Position for Part to rotate around.
	Speed -> Speed at which to rotate.
	OrbitDirection -> Direction to rotate in. Valid Directions are "clockwise" and "counterclockwise".
		
## SquareOrbit - Orbits a position in a square movement.
   #### PARAMETERS
	Part -> Part to be rotated.
	Time -> Time until completion.
	Width -> Size to make the square. Roughly equivalent to a radius of a circle.
	RotateAroundPos -> Position for Part to rotate around.
	Speed -> Speed at which to rotate.
	OrbitDirection -> Direction to rotate in. Valid Directions are "clockwise" and "counterclockwise".		
