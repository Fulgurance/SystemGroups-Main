class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("nogroup:x:65534:")
        else
            runGroupAddCommand(["-fg","65534","nogroup"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","nogroup"])
        end
    end

end
