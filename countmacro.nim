import macros

macro countfromto(arg: untyped): untyped =
    let startNum = arg[1]
    let endNum = arg[2]
    result = quote do:
        for i in `startNum`..`endNum`:
            echo i
        

countfromto(3..5)