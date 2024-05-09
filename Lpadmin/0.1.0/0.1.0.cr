class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("lpadmin:x:19:")
        else
            runGroupAddCommand(["-g","19","lpadmin"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","lpadmin"])
        end
    end

end
