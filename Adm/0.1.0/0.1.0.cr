class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("adm:x:16:")
        else
            runGroupAddCommand(["-fg","16","adm"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","adm"])
        end
    end

end
