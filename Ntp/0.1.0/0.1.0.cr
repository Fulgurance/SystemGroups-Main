class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 123 ntp")
    end

    def uninstall
        super

        runGroupDelCommand("-f ntp")
    end

end
