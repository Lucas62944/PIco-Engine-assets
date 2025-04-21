function onCreatePost()
    -- Verifica se a música atual é "too-slow-pico"
    if getPropertyFromClass('PlayState', 'songName') == 'too-slow-Pico' then
        -- Define as noteSkins para cada jogador
        setNoteSkin('player', 'pico') -- Para o jogador
        setNoteSkin('opponent', 'NOTE-Sonic-EXE') -- Para o oponente
    end
end

function setNoteSkin(player, skin)
    local startIndex = 0
    local endIndex = 3

    if player == 'opponent' then
        startIndex = 0 -- Notas do oponente
    elseif player == 'player' then
        startIndex = 4 -- Notas do jogador
        endIndex = 7
    end

    for i = startIndex, endIndex do
        setPropertyFromGroup('strumLineNotes', i, 'texture', 'noteSkins/' .. skin)
    end
end