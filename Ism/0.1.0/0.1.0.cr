class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg #{Ism.systemId} -r ism")
    end

    def uninstall
        super

        runGroupDelCommand("-f #{Ism.systemId}")
    end

end
