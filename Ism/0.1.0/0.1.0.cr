class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 250 ism")
    end

    def uninstall
        super

        runGroupDelCommand("-f 250")
    end

end
