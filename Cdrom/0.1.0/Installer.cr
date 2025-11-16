class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 15 cdrom")
    end

    def uninstall
        super

        runGroupDelCommand("-f cdrom")
    end

end
