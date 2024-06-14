class Target < ISM::VirtualSoftware

    def install
        super

        runGroupAddCommand("-fg 83 ldap")
    end

    def uninstall
        super

        runGroupDelCommand("-f ldap")
    end

end
