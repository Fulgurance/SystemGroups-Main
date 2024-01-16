class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("users:x:999:")
        else
            runGroupAddCommand(["-fg","999","users"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","999"])
        end
    end

end
