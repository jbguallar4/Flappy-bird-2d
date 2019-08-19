ScoreState = Class{__includes = BaseState}


function ScoreState:enter(params)
    self.score = params.score
end


function ScoreState:update(dt)
    
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateMachine:change('countdown')
    end
end



function ScoreState:render()
    
    love.graphics.setFont(flappyFont)
    love.graphics.printf('You lost!', 0, 64, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(mediumFont)
    love.graphics.printf('Score: ' .. tostring(self.score), 0, 100, VIRTUAL_WIDTH, 'center')

    if self.score >= 10 then 
       
        local bronze = love.graphics.newImage('bronze.png')
        love.graphics.draw(bronze,230,120)
    end

    if self.score >= 20 then 

        local silver = love.graphics.newImage('silver.png')
        
        love.graphics.draw(silver,220,110)
 
    end

    if self.score >= 30 then 

        local gold = love.graphics.newImage('gold.png')
        
        love.graphics.draw(gold,210,100)

    end

    love.graphics.printf('Press Enter to Play Again!', 0, 190, VIRTUAL_WIDTH, 'center')
end


