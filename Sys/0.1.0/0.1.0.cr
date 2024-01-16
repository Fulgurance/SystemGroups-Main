class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("sys:x:2:")
        else
            runGroupAddCommand(["-fg","2","sys"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","sys"])
        end
    end

end
