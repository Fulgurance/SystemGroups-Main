class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","80","uuid"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","uuid"])
    end

end
