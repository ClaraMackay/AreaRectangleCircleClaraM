
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
local widthOfRectangle = 350 
local heightOfRectangle = 200
local AreaOfRectangle

-- set the background colour of my screen 
display.setDefault("background", 0/255, 59/255, 111/255)

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

-- draw the rectangle that is half the width and height of the screen size 
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

-- anchor the rectangle in the top left corner of the screen and set its (x,y) position 
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

-- set the width of the border
myRectangle.strokeWidth = 20

-- set the colour of the border
myRectangle:setFillColor(0.7, 0.1, 0.3)

-- set the colour of the border 
myRectangle:setStrokeColor(255, 255, 255)

-- calculate the area 
AreaOfRectangle = widthOfRectangle * heightOfRectangle

-- write the area on the screen
areaText = display.newText("The area of this rectangle with a width of \n" .. 
	widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " .. 
	AreaOfRectangle .. " pixels^2. ", 0, 0, Arial, textSize)

-- anchor the text and set it's (x,y) position
areaText.anchorX = 0 
areaText.anchorY = 0 
areaText.x = 20
areaText.y = display.contentHeight/2 

-- 