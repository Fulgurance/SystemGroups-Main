class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","3","kmem"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","kmem"])
    end

end
