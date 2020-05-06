filePath = deaths.txt
FileReadLine, deathVar, %filePath%, 1

F12::
    IfNotExist, %filePath%
        FileAppend,0, %filePath%

    FileReadLine, deathVar, %filePath%, 1

    Var := ++deathVar

    FileDelete, %filePath%
    FileAppend,%deathVar%, %filePath%
return

F11::
    IfNotExist, %filePath%
        FileAppend,0, %filePath%

    FileReadLine, deathVar, %filePath%, 1
    
    if deathVar = 0
    return

    Var := --deathVar
    
    FileDelete, %filePath%
    FileAppend,%deathVar%, %filePath%
return
