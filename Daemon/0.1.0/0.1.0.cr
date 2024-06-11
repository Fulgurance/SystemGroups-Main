class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","6","daemon"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","daemon"])
    end

end
