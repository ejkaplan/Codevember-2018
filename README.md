# Codevember-2018
Creative coding project per day for November, using prompts from http://codevember.xyz/.

## Day 1: Infinity
Nice pretty little spiral. Made with a bunch of circles whose center points are moving at a constant velocity around a circle and whose radii are increasing linearly.

![alt text](https://raw.githubusercontent.com/ejkaplan/Codevember-2018/master/Day1_Infinity/day1_infinity.gif "Infinity")

## Day 2: Time
Maybe a little bit literal, but it was fun making a clock where the hour and minute hands move correctly relative to each other. Originally, I had the circular clock faces as well, but I think it looks more interesting if it's just the hands spinning on a black background.

![alt text](https://raw.githubusercontent.com/ejkaplan/Codevember-2018/master/Day2_Time/day2_time.gif "Time")

## Day 3: Carrot
For the carrot prompt, I decided to make a pseudo-random carrot generator. The body of the carrot is made with a catmull-rom spline that randomizes the length and width of the carrot. (Fortunately, processing has a built in catmull-rom spline. I implemented it in college, and I don't really feel the need to do it again.) The leaves are a tree fractal that slightly randomizes the branching angle and the color of the leaves for each leaf, which gives it a nice texture. Given more time, I'd like to add some shading to the carrot body so that it isn't so flat looking. But I won't do that tonight because I spent all day playing board games, so I didn't even start this until after midnight on the 4th.

![alt text](https://raw.githubusercontent.com/ejkaplan/Codevember-2018/master/Day3_Carrot/day3_carrot.gif "Carrot")
