class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","80","uuidd"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","uuidd"])
    end

end
