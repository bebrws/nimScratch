import macros

macro dumptree(arg: untyped): untyped =
    echo arg.treeRepr

macro countfromto(arg: untyped): untyped =
    if arg[0] != ident(".."):
        echo "incorrect nim node seperating numbers"
    let startNum = arg[1]
    let endNum = arg[2]
    return quote do:
        for i in `startNum`..`endNum`:
            echo i
        

dumptree(3..5)

countfromto(1..10)

countfromto(3==5)