class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","4","tape"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","tape"])
    end

end
