class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","11","audio"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","audio"])
    end

end
