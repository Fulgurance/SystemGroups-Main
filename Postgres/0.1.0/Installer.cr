class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-g 41 postgres")
    end

    def uninstall
        super

        runGroupDelCommand("-f postgres")
    end

end
