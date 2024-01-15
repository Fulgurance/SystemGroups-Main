class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","2","sys"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","sys"])
    end

end
