class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("uuidd:x:80:")
        else
            runGroupAddCommand(["-fg","80","uuidd"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","uuidd"])
        end
    end

end
