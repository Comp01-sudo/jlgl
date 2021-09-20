function init(error_callback=ecall, versionMAJ, versionMIN, fullscreen, height, width, glviewx, glviewy)
    if(!(ccall((GLFWInit, glfw3), Bool, ())))
        println("ERROR 1: \n GLFW INIT FAILED");
        exit(1);
    end

    ccall((:glfwSetErrorCallback, glfw3), (error_callback));
    ccall((:glfwWindowHint, glfw3), (GLFW_CONTEXT_VERSION_MAJOR, versionMAJ));
    ccall((:glfwWindowHint, glfw3), (GLFW_CONTEXT_VERSION_MINOR, versionMIN));
    if(fullscreen)
end

Enumber = 0;

function ecall(error, description)
    println(Enumber + " | Error Number " + error + ": " + description);
end