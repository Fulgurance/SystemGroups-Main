class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","24","input"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","input"])
    end

end
