class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("mail:x:34:")
        else
            runGroupAddCommand(["-fg","34","mail"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","mail"])
        end
    end

end
