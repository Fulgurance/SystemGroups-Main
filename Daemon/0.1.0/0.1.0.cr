class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("daemon:x:6:")
        else
            runGroupAddCommand(["-fg","6","daemon"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","daemon"])
        end
    end

end
