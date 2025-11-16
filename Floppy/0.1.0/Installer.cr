class Target < ISM::VirtualSoftware

    def install
        super


        runGroupAddCommand("-fg 7 floppy")
    end

    def uninstall
        super

        runGroupDelCommand("-f floppy")
    end

end
