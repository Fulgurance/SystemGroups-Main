class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 303 nordvpn")
    end

    def uninstall
        super

        runGroupDelCommand("-f nordvpn")
    end

end
