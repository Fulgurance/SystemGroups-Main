class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg #{systemId} -r ism")
    end

    def uninstall
        super

        runGroupDelCommand("-f #{systemId}")
    end

end
