class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateGroupFile("usb:x:14:")
        else
            runGroupAddCommand(["-fg","14","usb"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runGroupDelCommand(["-f","usb"])
        end
    end

end
