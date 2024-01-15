class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","65534","nogroup"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","nogroup"])
    end

end
