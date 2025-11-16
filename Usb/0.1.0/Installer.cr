class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 14 usb")
    end

    def uninstall
        super

        runGroupDelCommand("-f usb")
    end

end
