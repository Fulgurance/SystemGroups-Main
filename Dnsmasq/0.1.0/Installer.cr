class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 275 dnsmasq")
    end

    def uninstall
        super

        runGroupDelCommand("-f dnsmasq")
    end

end
