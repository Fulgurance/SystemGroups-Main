class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("floppy:x:7:")
        else
            runGroupAddCommand(["-fg","7","floppy"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","floppy"])
        end
    end

end
