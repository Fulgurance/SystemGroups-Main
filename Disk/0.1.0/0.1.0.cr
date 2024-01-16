class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("disk:x:8:")
        else
            runGroupAddCommand(["-fg","8","disk"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","disk"])
        end
    end

end
