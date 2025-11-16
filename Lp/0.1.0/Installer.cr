class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 9 lp")
    end

    def uninstall
        super

        runGroupDelCommand("-f lp")
    end

end
