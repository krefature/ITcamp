love.window.setTitle("Dungeon masters")
prnt = ""
local menu = {
    NewGameX = 325,
    NewGameY = 250,
    NewGameScaleX = 150,
    NewGameScaleY = 50,
    NewGameImg = love.graphics.newImage("NewGame.png"),

    ResumeX = 325,
    ResumeY = 325,
    ResumeScaleX = 150,
    ResumeScaleY = 50,
    ResumeImg = love.graphics.newImage("Resume.png"),

    SettingsX = 325,
    SettingsY = 400,
    SettingsScaleX = 150,
    SettingsScaleY = 50,
    SettingsImg = love.graphics.newImage("Settings.png"),

    QuitX = 725,
    QuitY = 525,
    QuitScaleX = 50,
    QuitScaleY = 50,
    QuitImg = love.graphics.newImage("Quit.png")
}
x = 0
y = 0
button = 0
MouseIsNewGame = false
MouseIsResume = false
MouseIsSettings = false
MouseIsQuit = false
function love.mousemoved(x,y)
    if x <= menu.NewGameX + menu.NewGameScaleX and x >= menu.NewGameX and y <= menu.NewGameY + menu.NewGameScaleY and y >= menu.NewGameY then
        menu.NewGameImg = love.graphics.newImage("NewGameSelect.png")
        MouseIsNewGame = true
    else
        menu.NewGameImg = love.graphics.newImage("NewGame.png")
        MouseIsNewGame = false
    end


    if x <= menu.ResumeX + menu.ResumeScaleX and x >= menu.ResumeX and y <= menu.ResumeY + menu.ResumeScaleY and y >= menu.ResumeY then
        menu.ResumeImg = love.graphics.newImage("ResumeSelect.png")
        MouseIsResume = true
    else
        menu.ResumeImg = love.graphics.newImage("Resume.png")
        MouseIsResume = false
    end


    if x <= menu.SettingsX + menu.SettingsScaleX and x >= menu.SettingsX and y <= menu.SettingsY + menu.SettingsScaleY and y >= menu.SettingsY then
        menu.SettingsImg = love.graphics.newImage("SettingsSelect.png")
        MouseIsSettings = true
    else
        menu.SettingsImg = love.graphics.newImage("Settings.png")
        MouseIsSettings = false
    end


    if x <= menu.QuitX + menu.QuitScaleX and x >= menu.QuitX and y <= menu.QuitY + menu.QuitScaleY and y >= menu.QuitY then
        menu.QuitImg = love.graphics.newImage("QuitSelect.png")
        MouseIsQuit = true
    else
        menu.QuitImg = love.graphics.newImage("Quit.png")
        MouseIsQuit = false
    end
end
function love.mousepressed(qqqqqq, qqqqq, button)
    if button == 1 and MouseIsQuit == true then
        love.window.close()
    end
    if button == 1 and MouseIsNewGame == true then
        prnt = "New Game"
    end
    if button == 1 and MouseIsResume == true then
        prnt = "Resume"
    end
    if button == 1 and MouseIsSettings == true then
        prnt = "Settings"
    end

 end

function love.update(dt)

end

function love.draw()
    love.graphics.draw(menu.NewGameImg, menu.NewGameX, menu.NewGameY, 0, 0.25, 0.25,0,0)
    love.graphics.draw(menu.ResumeImg, menu.ResumeX, menu.ResumeY, 0, 0.25, 0.25,0,0)
    love.graphics.draw(menu.SettingsImg, menu.SettingsX, menu.SettingsY, 0, 0.25, 0.25,0,0)
    love.graphics.draw(menu.QuitImg, menu.QuitX, menu.QuitY, 0, 0.25, 0.25,0,0)
    love.graphics.print(prnt, 0,0)
end