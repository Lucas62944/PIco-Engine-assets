local bfImage = "icons/icon-bf"
local dadImage = "icons/icon-dad"

luaDebugMode = true

local function checkImageExists(image)
	return checkFileExists("images/"..image..".png")
end
local function findIcon(icon)
	local img = "icons/Winning/triple-icons/icon-"..icon
	if not checkImageExists(img) then
		img = "icons/Winning/triple-icons/"..icon
		if not checkImageExists(img) then
			img = nil
		end
	end
	return img
end
local function reloadIcons()
	bfImage = findIcon(getProperty("boyfriend.healthIcon"))
	dadImage = findIcon(getProperty("dad.healthIcon"))

	if bfImage ~= nil then
		makeLuaSprite("iconThing", bfImage) -- not the best way to get the image dimensions but idrc honestly
		loadGraphic("iconP1", bfImage, getProperty("iconThing.width")/3, getProperty("iconThing.height"))
		removeLuaSprite("iconThing", true)
		setProperty("iconP1.flipX", true)
		addAnimation("iconP1", "iconLol!", {0, 1, 2}, 0, false)
		playAnim("iconP1", "iconLol!", 0)
	else
		setProperty("iconP1.flipX", false)
	end

	if dadImage ~= nil then
		makeLuaSprite("iconThing", dadImage) -- opponent icon lol!!!!
		local dadWidthLol = getProperty("iconThing.width")/3
		loadGraphic("iconP2", dadImage, dadWidthLol, getProperty("iconThing.height"))
		removeLuaSprite("iconThing", true)
		addAnimation("iconP2", "iconLol!", {0, 1, 2}, 0, false)
		playAnim("iconP2", "iconLol!", 0)
	end
end
function onStartCountdown()		-- use onStartCountdown instead of something like onCreatePost because onCreatePost doesn't work if onStartCountdown is interrupted
	reloadIcons()
end

function onEvent(n,v1,v2)
	if n == "Change Character" then
		reloadIcons()
	end
end

function onUpdatePost()
	if getProperty("healthBar.percent") > 80 then
		if bfImage ~= nil then	setProperty("iconP1.animation.curAnim.curFrame", 2) end
		if dadImage ~= nil then	setProperty("iconP2.animation.curAnim.curFrame", 1) end
	elseif getProperty("healthBar.percent") < 20 then
		if bfImage ~= nil then	setProperty("iconP1.animation.curAnim.curFrame", 1) end
		if dadImage ~= nil then	setProperty("iconP2.animation.curAnim.curFrame", 2) end
	else
		if bfImage ~= nil then	setProperty("iconP1.animation.curAnim.curFrame", 0) end
		if dadImage ~= nil then	setProperty("iconP2.animation.curAnim.curFrame", 0) end
	end
end