class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 52 dhcpcd")
    end

    def uninstall
        super

        runGroupDelCommand("-f dhcpcd")
    end

end
