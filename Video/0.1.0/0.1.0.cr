class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 12 video")
    end

    def uninstall
        super

        runGroupDelCommand("-f video")
    end

end
