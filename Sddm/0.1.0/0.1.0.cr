class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","219","sddm"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","sddm"])
    end

end
