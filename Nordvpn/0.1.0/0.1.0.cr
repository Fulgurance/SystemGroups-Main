class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg -1 nordvpn")
    end

    def uninstall
        super

        runGroupDelCommand("-f nordvpn")
    end

end
