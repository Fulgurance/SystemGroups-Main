class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("wheel:x:97:")
        else
            runGroupAddCommand(["-fg","97","wheel"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","wheel"])
        end
    end

end
