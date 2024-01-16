class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("messagebus:x:18:")
        else
            runGroupAddCommand(["-fg","18","messagebus"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","messagebus"])
        end
    end

end
