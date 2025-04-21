local speed = 32
local i =0
function onCreate()
    makeLuaSprite('stageback', 'stages/faveladia/layer0', -655, -385);
	setScrollFactor('stageback', 0.1, 0.1);
	addLuaSprite('stageback', false);

	makeLuaSprite('city', 'stages/faveladia/layer6', -655, -385);
	setScrollFactor('city', 0.2, 0.2);
	addLuaSprite('city', false);

	makeLuaSprite('houseback', 'stages/faveladia/layer52', -655, -385);
	setScrollFactor('houseback', 0.36, 0.36);
	addLuaSprite('houseback', false);

	makeLuaSprite('house', 'stages/faveladia/layer5', -655, -385);
	setScrollFactor('house', 0.4, 0.4);
	addLuaSprite('house', false);

	makeLuaSprite('tree', 'stages/faveladia/layer42', -655, -385);
	setScrollFactor('tree', 0.420, 0.420);
	addLuaSprite('tree', false);

	makeLuaSprite('brickhouse', 'stages/faveladia/layer4', -655, -385);
	setScrollFactor('brickhouse', 0.65, 0.65);
	addLuaSprite('brickhouse', false);

	makeLuaSprite('wall', 'stages/faveladia/layer3', -655, -385);
	setScrollFactor('wall', 0.69, 0.69);
	addLuaSprite('wall', false);

	makeLuaSprite('busao', 'stages/faveladia/busao', -655, 560);
	setScrollFactor('busao', 0.7, 0.7);
	addLuaSprite('busao', false);

	makeLuaSprite('powerline', 'stages/faveladia/layer2', -655, -385);
	setScrollFactor('powerline', 0.85, 0.85);
	addLuaSprite('powerline', false);

	makeLuaSprite('sidewalk', 'stages/faveladia/layer1', -655, -385);
	setScrollFactor('sidewalk', 1, 1);
	addLuaSprite('sidewalk', false);

	makeLuaSprite('sunlight', 'stages/faveladia/layer7', -655, -385);
	setScrollFactor('sunlight', 0.1, 0.1);
	addLuaSprite('sunlight', true);
end

function onUpdate(elapsed)
i = i + 1

	DALAPSED = elapsed/-0.016
	speed = 32*DALAPSED

	math.randomseed(i)
	setProperty('busao.x',getProperty('busao.x')+speed)
	if getProperty('busao.x') < -40000 then
		setProperty('busao.x', 2000)
    end
end