class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 86 netdev")
    end

    def uninstall
        super

        runGroupDelCommand("-f netdev")
    end

end
