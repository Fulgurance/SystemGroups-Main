class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-g 50 sshd")
    end

    def uninstall
        super

        runGroupDelCommand("-f sshd")
    end

end
