class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","97","wheel"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","wheel"])
    end

end
