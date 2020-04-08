# Stencyl Extended Math
#### An extension for the game engine Stencyl that adds extra math functions to make math calculations easier.

Stencyl lacks a number of mathematical blocks that would have to be built from scratch for each game that uses functions like averages in a list, factorials, and logarithms of base n. This extension allows you to do these plus much more without building the math functions from scratch.

![Math Header](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/header.png "Math Header")

## ----- Constants -----
### NaN
![NaN](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/NaN.png "NaN")

Returns a constant NaN which denotes not a number.

### Infinity
![Infinity](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/infinity.png "Infinity")

Returns a constant which denotes the value of infinity.

### Root 2
![Root Two](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/root-two.png "Root Two")

Returns the value of the square root of 2.

### Phi
![Phi](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/phi.png "Phi")

Returns Phi (the golden ratio) which is equal to (1 + √5)/2 ≈ 1.618

### Maximum Bit Integers
![Max Bit Integer](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/maximum-bit-integer.png "Max Bit Integer")

Returns the maximum value of an 8, 16, 32, and 64 bit number.

## ----- Lists -----
### Average, Max, Min values in List
![List Calculations](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/average-list.png "List Calculations")

Returns a specific number of the value of items in a given list which matches a desired characteristic.  
**Choices:**
- Average  
- Max  
- Min  

### Intersection, Union and Subtraction of Lists
![List Intersection](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/intersection.png "List Intersection")

Returns a list with a desired modification given 2 lists.  
**Choises:**
- Intersection: Returns a list of items found in both lists.  
- Union: Returns a unique set of items found in all lists.  
- Subraction: Returns the first list with all values from the second list removed in the first.  

### Subset
![Subset](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/subset.png "Subset")

Returns true if every item is list A is also found in list B.

### Summation
![Summation](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/summation.png "Summation")

Returns the sum of all values in a given list.

### Identity Matrix
![Identity Matrix](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/identity-matrix.png "Identity Matrix")

Returns a matrix square of a given size with 1's along the diagonal

## ----- Math -----
### Is Number
![Is Number](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/is-number.png "Is Number")

Returns true if a given value is a number.

### Is Even/Odd
![Even Odd](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/even-odd.png "Even Odd")

Returns whether or not a number is even or odd.

### +/-
![Plus Minus](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/plus-minus.png "Plus Minus")

Returns a list of size 2 where the value of A + B is at index 0 and A - B is at index 1.

### Inverse
![Inverse](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/inverse.png "Inverse")

Returns the inverse 1/N of a number.

### Divides
![Divides](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/divides.png "Divides")

Returns true if the first number evenly divides the second.

### Modular Arithmatic
![Modular Arithmatic](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/modular-arithmatic.png "Modular Arithmatic")

Returns true if the remainder of each of the first two numbers divided by the last are the same. 

### Cube Root
![Cube Root](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/cube-root.png "Cube Root")

Returns the cube root of a number.

### N-th Root
![Nth Root](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/nth-root.png "Nth Root")

Returns the N-th root of a number

### Log with Base
![Log Base](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/log-base.png "Log Base")

Returns the logarithm of a number with any base.

### Factorial
![Factorial](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/factorial.png "Factorial")

Returns the factorial of a number. ie. (N)(N-1)(N-2)...(1)

### Pick
![Pick](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/pick.png "Pick")

Returns the factorial of a number to a given step. ie. (N)(N-1)(N-2)...(N-(k-1))

### Choose
![Choose](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/choose.png "Choose")

Returns ((N)!/(N-k)!)/(k)!

### sinh, cosh, tanh
![Sinh, Cosh, Tanh](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/sinh.png "Sinh, Cosh, Tanh")

Returns sinh, cosh, or tanh.  
~ sinh = (1/2) (-(1/e^N) + e^N)  
~ cosh = (1/2) ((1/e^N) + e^N)  
~ tanh = sinh(N)/cosh(N)  

### Implies
![Implies](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/implies.png "Implies")

Returns false if the premise is true, but the outcome is false otherwise returns true.

### Heaven Side Step
![Heaven Side Step](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/heaven-side-step.png "Heaven Side Step")

Returns 0 if the number given is 0, 1 if the number given is larger than 0, and -1 if the number given is less than 0.

## ----- Positional Space -----
### Distance Between Actors
![Distance Between Actors](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/dist.png "Distance Between Actors")

Returns the distance between 2 actors in the scene.

## ----- Geometry -----
### Circle
![Circle](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/circle.png "Circle")

Returns the area or circumerence of a circle with radius R.

### Rectangle
![Rectangle](https://raw.githubusercontent.com/ess4654/Stencyl-Extended-Math/master/block-images/square.png "Rectangle")

Returns the area or parimeter of a rectangle with length L and width W.

## Last Updated April 7, 2020 v1.0

Additional Notes: If you require additional math functions that are not included please let me know so I can add them

Contact Me: thejoblesscoder@gmail.com

Extension is Open Sourced and Licensed under MIT open source standards.
