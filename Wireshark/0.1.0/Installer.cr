class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 62 wireshark")
    end

    def uninstall
        super

        runGroupDelCommand("-f wireshark")
    end

end
