class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("root:x:0:")
        else
            runGroupAddCommand(["-fg","0","root"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","root"])
        end
    end

end
