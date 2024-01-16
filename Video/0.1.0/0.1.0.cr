class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("video:x:12:")
        else
            runGroupAddCommand(["-fg","12","video"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","video"])
        end
    end

end
