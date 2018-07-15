class sshd {
	package {
		"ssh": ensure => installed;
	}

	file { "/etc/ssh/sshd_config":
        ensure  => present,
		mode    => 600,
		owner   => root,
		group   => root,
		require => Package["ssh"],
		source  => "puppet:///modules/sshd/sshd.config",
	}

	service { "sshd":
		# automatically start at boot time
		enable     => true,
		# restart service if it is not running
		ensure     => running,
		# "service smartd status" returns useful service status info
		hasstatus  => true,
		# "service smartd restart" can restart service
		hasrestart => true,
		# package and configuration must be present for service
		require    => [ Package["ssh"],
			        File["/etc/ssh/sshd_config"] ],
		# changes to configuration cause service restart
		subscribe  => [ Package["ssh"], 
                    File["/etc/ssh/sshd_config"] ],
	    }
}
