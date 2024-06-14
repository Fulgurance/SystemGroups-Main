class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 999 users")
    end

    def uninstall
        super

        runGroupDelCommand("-f 999")
    end

end
