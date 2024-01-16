class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("dialout:x:10:")
        else
            runGroupAddCommand(["-fg","10","dialout"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","dialout"])
        end
    end

end
