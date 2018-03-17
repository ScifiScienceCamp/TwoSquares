-- This is where you will link to other Lua files

-- This is where global variables go
-- Global variables are useable by all of our files

function drawSquare(x, y, width)
	
	love.graphics.setColor(255, 255, 255, 100)
	love.graphics.rectangle( "fill" , x, y, width, width)
	love.graphics.setColor(255, 255, 255, 100)
	
end

function love.load()
	-- Code in the line will run on start-up
	WIDTH = love.graphics.getWidth()
	HEIGHT = love.graphics.getHeight()
	MAX_SIZE = 300
end

function getSize(my)
	return (my*MAX_SIZE)/HEIGHT
end

function love.draw()
	-- This function is run repeatedly, "draws" things onto the screen
	mx, my = love.mouse.getPosition()
	local w = getSize(my)
	drawSquare(mx-w/2, HEIGHT/2-w/2, w)
	local w = getSize(HEIGHT-my)
	drawSquare(WIDTH -(mx+w/2), HEIGHT/2-w/2, w)
end

function love.update()
	-- Also runs repeatedly, used for the bulk of the code
end