class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","61","kvm"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","kvm"])
    end

end
