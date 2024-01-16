class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("cdrom:x:15:")
        else
            runGroupAddCommand(["-fg","15","cdrom"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","cdrom"])
        end
    end

end
