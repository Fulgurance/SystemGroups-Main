class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 313 flatpak")
    end

    def uninstall
        super

        runGroupDelCommand("-f flatpak")
    end

end
