class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 18 messagebus")
    end

    def uninstall
        super

        runGroupDelCommand("-f messagebus")
    end

end
