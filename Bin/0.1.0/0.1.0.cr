class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("bin:x:1:daemon")
        else
            runGroupAddCommand(["-fg","1","bin"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","bin"])
        end
    end

end
