class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 1 bin")
    end

    def uninstall
        super

        runGroupDelCommand("-f bin")
    end

end
