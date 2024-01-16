class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("lp:x:9:")
        else
            runGroupAddCommand(["-fg","9","lp"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","lp"])
        end
    end

end
