class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 17 uucp")
    end

    def uninstall
        super

        runGroupDelCommand("-f uucp")
    end

end
