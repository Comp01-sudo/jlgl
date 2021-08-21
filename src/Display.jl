struct Display 
    function create(width, height) 
        ccall((glwfCreateWindow, "window.h"))
    end
    function create(width, height, title) 
        ccall()
    end