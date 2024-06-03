class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","16","cronie"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","cronie"])
    end

end
