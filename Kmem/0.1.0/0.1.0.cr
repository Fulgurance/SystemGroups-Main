class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("kmem:x:3:")
        else
            runGroupAddCommand(["-fg","3","kmem"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","kmem"])
        end
    end

end
