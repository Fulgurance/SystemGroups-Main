class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 0 root")
    end

    def uninstall
        super

        runGroupDelCommand("-f root")
    end

end
