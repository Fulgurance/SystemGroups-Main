class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","272","plugdev"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","plugdev"])
    end

end
