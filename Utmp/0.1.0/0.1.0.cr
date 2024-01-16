class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("utmp:x:13:")
        else
            runGroupAddCommand(["-fg","13","utmp"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","utmp"])
        end
    end

end
