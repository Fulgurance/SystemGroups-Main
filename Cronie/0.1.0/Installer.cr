class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 20 cronie")
    end

    def uninstall
        super

        runGroupDelCommand("-f cronie")
    end

end
