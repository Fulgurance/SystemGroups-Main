class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("tty:x:5:")
        else
            runGroupAddCommand(["-fg","5","tty"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","tty"])
        end
    end

end
