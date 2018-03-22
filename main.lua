
-- Title: AreaOfRectangleAndCircle
-- Name: Clara Mackay
-- Course: ICS2O
-- This program displays a rectangle and haas a text object that calculates the area 
-- and displays it. then I added a circle and another text object that calculates its area 
-- and displays it. 

-- create my local variables
local areaText
local textSize = 50
local myRectangle
local widthOfRectangle = 190 
local heightOfRectangle = 100
local AreaOfRectangle
local radiusOfCircle = 190 
local PI = 3.14
local AreaOfCircle 

-- set the background colour of my screen 
display.setDefault("background", 0/255, 59/255, 111/255)

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

-- draw the rectangle that is half the width and height of the screen size 
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

-- anchor the rectangle in the top left corner of the screen and set its (x,y) position 
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 10
myRectangle.y = 0

-- set the width of the border
myRectangle.strokeWidth = 20

-- set the colour of the rectangle
myRectangle:setFillColor(0.7, 0.1, 0.3)

-- set the colour of the border 
myRectangle:setStrokeColor(255, 255, 255)

-- calculate the area 
AreaOfRectangle = widthOfRectangle * heightOfRectangle

-- write the area of the rectangle on the screen
areaText = display.newText("The area of this rectangle with \na width of " .. 
	widthOfRectangle .. " and a height of \n" .. heightOfRectangle .. " is " .. 
	AreaOfRectangle .. " pixels^2. ", 0, 0, Arial, 20)
areaText.anchorY = 0 
areaText.x = 30

-- anchor the text and set it's (x,y) position
areaText.x = 140
areaText.y = 140 

-- set the colour of the newText
areaText:setTextColor(1, 1, 1)

-- draw a circle
local myCircle = display.newCircle( 200, 200, 50 )
myCircle:setFillColor( 0.5 )

-- anchor the circle in the top left corner of the screen and set its (x,y) position 
myCircle.anchorX = 0
myCircle.anchorY = 0
myCircle.x = 340
myCircle.y = 10

-- calculate the area 
AreaOfCircle = radiusOfCircle * radiusOfCircle * PI

-- write the area of the circle on the screen
areaText = display.newText("The area of this \ncircle with a \nradius of " .. 
	radiusOfCircle .. " is \n" .. AreaOfCircle .. " pixels^2. ", 0, 0, Arial, 20)

-- anchor the text and set it's (x,y) position
areaText.x = 390
areaText.y = 160

-- set the width of the border
myCircle.strokeWidth = 5

-- Correct sound
-- setting a variable to an mp3 file
local correctSound = audio.loadSound("Sounds/bensound-.mp3") 
local correctSoundChannel

correctSoundChannel = audio.play(correctSound)