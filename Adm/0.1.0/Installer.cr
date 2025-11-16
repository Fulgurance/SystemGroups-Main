class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 16 adm")
    end

    def uninstall
        super

        runGroupDelCommand("-f adm")
    end

end
