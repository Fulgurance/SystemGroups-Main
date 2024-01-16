class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("audio:x:11:")
        else
            runGroupAddCommand(["-fg","11","audio"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","audio"])
        end
    end

end
