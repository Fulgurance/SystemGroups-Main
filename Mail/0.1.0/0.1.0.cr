class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","34","mail"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","mail"])
    end

end
