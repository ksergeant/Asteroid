-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

-- Cette ligne permet de déboguer pas à pas dans ZeroBraneStudio
if arg[#arg] == "-debug" then require("mobdebug").start() end

<<<<<<< HEAD
=======
local myGame = require("Game")

>>>>>>> mise a jour asteroid
local Lander = {}
Lander.x = 0
Lander.y = 0
Lander.angle = 270
Lander.speed = 1
Lander.vx = 0
Lander.vy = 0
Lander.engineOn = false
Lander.img = love.graphics.newImage("images/Final_Ship.png")
Lander.imgEngine = love.graphics.newImage("images/Final_Engine.png")


local Asteroid = {}
<<<<<<< HEAD
Asteroid.x = 0
Asteroid.y = 0
Asteroid.angle = 0
Asteroid.speed = 0
=======
Asteroid.x = 50
Asteroid.y = 50
Asteroid.angle = 0
Asteroid.speed = 0
Asteroid.angle = 90
Asteroid.img = love.graphics.newImage("images/Asteroid")
>>>>>>> mise a jour asteroid



function love.load()
  
<<<<<<< HEAD
  love.window.setMode(1200, 800)
=======
 
>>>>>>> mise a jour asteroid
  largeur = love.graphics.getWidth()
  hauteur = love.graphics.getHeight()
  
  Lander.x = largeur/2
  Lander.y = hauteur/2
  
end

function love.update(dt)
<<<<<<< HEAD
 -- Lander.vy = Lander.vy +(0.6 * dt)
  
=======
  Lander.vy = Lander.vy +(0.3 * dt)
  
  if dt > 0.035 then return end
    Asteroid.angle = Asteroid.angle + 27.5 * dt
  Asteroid.x = Asteroid.x + 1
  Asteroid.y = Asteroid.y + 1
    
  if Lander.vy > 2 then
     Lander.vy = 2
    
  end
>>>>>>> mise a jour asteroid
  Lander.x = Lander.x + Lander.vx
  Lander.y = Lander.y + Lander.vy
  
  if love.keyboard.isDown("right") then
    Lander.angle = Lander.angle + (90 * dt)
    if Lander.angle > 360 then Lander.angle = 0 end
  end

  if love.keyboard.isDown("left") then
    Lander.angle = Lander.angle - (90 * dt)
        if Lander.angle < 0 then Lander.angle = 360 end

  end

  if love.keyboard.isDown("up") then
    Lander.engineOn = true 
    
    local angle_radian = math.rad(Lander.angle)
    local force_x = math.cos(angle_radian) * (Lander.speed * dt)
    local force_y = math.sin(angle_radian) * (Lander.speed * dt)
    Lander.vx = Lander.vx + force_x
<<<<<<< HEAD
    Lander.vy = Lander.vy + force_y
=======
    Lander.vy = Lander.vy + force_y 
>>>>>>> mise a jour asteroid
  else 
    Lander.engineOn = false
  end
  
  if Lander.y < 0 then 
    Lander.y = Lander.y + hauteur
    
  end
  
  if Lander.y > hauteur then 
    Lander.y = Lander.y - hauteur
    
  end
  
  if Lander.x < 0 then 
    Lander.x = Lander.x + largeur
    
  end
  
  if Lander.x > largeur then 
    Lander.x = Lander.x - largeur
    
  end
  
<<<<<<< HEAD
=======
  -- Asteroid
  
  if Asteroid.y < 0 then 
    Asteroid.y = Asteroid.y + hauteur
    
  end
  
  if Asteroid.y > hauteur then 
    Asteroid.y = Asteroid.y - hauteur
    
  end
  
  if Asteroid.x < 0 then 
    Asteroid.x = Asteroid.x + largeur
    
  end
  
  if Asteroid.x > largeur then 
    Asteroid.x = Asteroid.x - largeur
    
  end
  
>>>>>>> mise a jour asteroid
end

function love.draw()
    love.graphics.draw(Lander.img, Lander.x, Lander.y, 
      math.rad(Lander.angle), 1, 1, Lander.img:getWidth()/2, Lander.img:getHeight()/2)
    
<<<<<<< HEAD
    if Lander.engineOn == true then
    love.graphics.draw(Lander.imgEngine, Lander.x, Lander.y, 
      math.rad(Lander.angle), 1, 1, Lander.imgEngine:getWidth()/2, Lander.imgEngine:getHeight()/2)
    end
    
    love.graphics.circle("fill", 300, 300, 75, 100)
=======
     love.graphics.draw(Asteroid.img, Asteroid.x, Asteroid.y, 
      math.rad(Asteroid.angle), 1, 1, Asteroid.img:getWidth()/2, Asteroid.img:getHeight()/2)
    
    if Lander.engineOn == true then
    love.graphics.draw(Lander.imgEngine, Lander.x, Lander.y, 
      math.rad(Lander.angle), 1, 1, Lander.imgEngine:getWidth()/2,            Lander.imgEngine:getHeight()/2)
    end
    
    
>>>>>>> mise a jour asteroid
    
    local sDebug = " Debug:"
    sDebug = sDebug.. " angle="..tostring(Lander.angle)
    sDebug = sDebug.. " vx="..tostring(Lander.vx)
    sDebug = sDebug.. " vy="..tostring(Lander.vy) 

    love.graphics.print(sDebug,0,0)
end


function love.keypressed(key)
  
  print(key)
  
end
  