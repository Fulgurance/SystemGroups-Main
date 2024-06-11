class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-g","19","lpadmin"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","lpadmin"])
    end

end
