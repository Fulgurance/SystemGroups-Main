class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 10 dialout")
    end

    def uninstall
        super

        runGroupDelCommand("-f dialout")
    end

end
