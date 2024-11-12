class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 171 pulse")
    end

    def uninstall
        super

        runGroupDelCommand("-f pulse")
    end

end
