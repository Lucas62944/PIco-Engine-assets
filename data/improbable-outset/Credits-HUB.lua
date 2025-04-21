local charters = 'Angelkireina';
local coders = 'Angelkireina';

function onCreate()
    makeLuaSprite('credits', 'images/credits/Box/blackCreditsBox', 250, -600);
    setObjectCamera('credits', 'camOther');
    setProperty('credits.alpha', 0.8);

    makeLuaText('charterssection', 'CHARTERS', 500, 420, -500);
    setObjectCamera('charterssection', 'camOther');
    setTextSize('charterssection', 50);

    makeLuaText('chartersList', charters, 500, 420, -500);
    setObjectCamera('chartersList', 'camOther');
    setTextSize('chartersList', 20);

    makeLuaText('coderssection', 'CODERS', 500, 150, -500);
    setObjectCamera('coderssection', 'camOther');
    setTextSize('coderssection', 50);

    makeLuaText('codersList', coders, 500, 150, -500);
    setObjectCamera('codersList', 'camOther');
    setTextSize('codersList', 20);

    makeLuaText('songname', songName, 500, 400, -500);
    setObjectCamera('songname', 'camOther');
    setTextSize('songname', 50);

    addLuaSprite('credits', true);
    addLuaText('charterssection');
    addLuaText('chartersList');
    addLuaText('coderssection');
    addLuaText('codersList');
    addLuaText('songname');
end

function onSongStart()
    doTweenY('creditsTween', 'credits', 50, 1, 'quadInOut');
    doTweenY('chartTween', 'charterssection', 150, 1, 'quadInOut');
    doTweenY('chartListTween', 'chartersList', 200, 1, 'quadInOut');
    doTweenY('codeTween', 'coderssection', 350, 1, 'quadInOut');
    doTweenY('codeListTween', 'codersList', 400, 1, 'quadInOut');
    doTweenY('songTween', 'songname', 50, 1, 'quadInOut');
    runTimer('creditsBye', 3, 1);
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'creditsBye' then
        doTweenY('creditsTweenGo', 'credits', 800, 0.9, 'quadInOut');
        doTweenY('chartTweenGo', 'charterssection', 750, 0.9, 'quadInOut');
        doTweenY('chartListTweenGo', 'chartersList', 750, 0.9, 'quadInOut');
        doTweenY('codeTweenGo', 'coderssection', 750, 0.9, 'quadInOut');
        doTweenY('codeListTweenGo', 'codersList', 750, 0.9, 'quadInOut');
        doTweenY('songTweenGo', 'songname', 750, 0.9, 'quadInOut');
    end
end