class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 5 tty")
    end

    def uninstall
        super

        runGroupDelCommand("-f tty")
    end

end
