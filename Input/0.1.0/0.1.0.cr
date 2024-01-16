class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("input:x:24:")
        else
            runGroupAddCommand(["-fg","24","input"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","input"])
        end
    end

end
