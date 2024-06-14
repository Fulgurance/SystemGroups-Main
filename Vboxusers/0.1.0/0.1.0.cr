class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 304 vboxusers")
    end

    def uninstall
        super

        runGroupDelCommand("-f vboxusers")
    end

end
