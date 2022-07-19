# LoudounCodes 3D Puzzle Models

## Technical how-to

These puzzles and their associated pieces are written in a functional modeling tool/language known as [OpenSCAD](https://openscad.org/).

OpenSCAD is software for creating solid 3D CAD models. It is free software and available for Linux/UNIX, Windows and Mac OS X. Unlike most free software for creating 3D models (such as Blender) it does not focus on the artistic aspects of 3D modelling but instead on the CAD aspects. Thus it might be the application you are looking for when you are planning to create 3D models of machine parts but pretty sure is not what you are looking for when you are more interested in creating computer-animated movies.

When I print these, I create an .stl file via an export from OpenSCAD and print that via CURA.  You are free to do the same according to the freedoms and obligations outlined in the License file.

## Included Puzzles

### Triangle Color Puzzle
View the photos in the folder. I paint these randomly, with 6 paint colors.  Many interesting questions can be asked about these...
What makes a puzzle 'hard'?  What makes a puzzle 'easy'? How many solutions does any given puzzles have?  are just a few.

### Hexagon Color Puzzle
Just like the Triangle puzzle, but with an edge and a corner variant, parameterized in the OpenScad code.

These lead to other interesting questions - are these puzzles generally 'easier' or 'harder' than the triangles? The triangles have colors on the board, fixing the solution, but also acting as hints.  The hexagons have more edges that have to match than the triangles go... How does that affect the difficulty?

Can we figure out some meaning of the "maximum" difficulty, given we can change the number of colors and the ambiguity of each piece?

### Peg Solitaire
This is the famous "Jump the pegs until one remains" game you might have seen in Cracker Barrel.  This puzzle includes two variations - the Triangle and the "English" boards.  Someday I'll add the French and Hex boards, as well as a triangle with an additional row.

### Towers of Hanoi
A classic tool for teaching recursion in computer science, you can see it in action [in this video](https://youtu.be/S4HqTYdIm9A?t=1737)

### Mutually Orthogonal Latin Squares
A deep concept, and one I've been in love with for a decade.  Here's the idea:
Arrange the 16 face cards from a standard deck of cards so that each row and each column contain exactly one of each value and each suit.  Most people can do that in about 20 minutes of messing around.  This file is a 5x5 version using colors and heights of pegs to achieve the same effect.  It's up to you to print the pegs in 5 different colors though.

### More coming soon.


## Associated curriculum
I have a lot of curriculum that uses these puzzles in various ways, but I've never really published that for distribution beyond my visits to the classroom.  Ask nicely and I can share it with you, makre videos about it, and eventually clean it up to share it.


## Contributing
Pull requests welcome!  In forking and submitting a pull request, you are agreeing to the license, the community guidelines, and indicate you are willing to assign the copyright on any pull request to me so that I may enforce this copyright (or change it for future versions) without future hassle.

Follow normal github branch/pull request model.

Not that this repo contains much unit-tested code, but in the event that it ever does (or in the event that there become a reasonable way to unit test .scad files) pull requests will require code coverage.

Contributions are subject to the [![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](code_of_conduct.md)

