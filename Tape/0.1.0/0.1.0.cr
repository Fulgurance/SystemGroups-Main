class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("tape:x:4:")
        else
            runGroupAddCommand(["-fg","4","tape"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","tape"])
        end
    end

end
