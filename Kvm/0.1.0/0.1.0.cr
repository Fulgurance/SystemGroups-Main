class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("kvm:x:61:")
        else
            runGroupAddCommand(["-fg","61","kvm"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","kvm"])
        end
    end

end
