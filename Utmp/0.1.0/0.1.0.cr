class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","13","utmp"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","utmp"])
    end

end
