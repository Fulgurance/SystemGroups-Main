class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand(["-fg","27","polkitd"])
    end

    def uninstall
        super

        runGroupDelCommand(["-f","polkitd"])
    end

end
