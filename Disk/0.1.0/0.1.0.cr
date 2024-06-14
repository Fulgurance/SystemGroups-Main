class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 8 disk")
    end

    def uninstall
        super

        runGroupDelCommand("-f disk")
    end

end
