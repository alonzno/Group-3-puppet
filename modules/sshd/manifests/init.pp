class sshd {
	package {
		"sshd": ensure => installed;
	}

	file { "/etc/ssh/sshd_config":
		source  => [
			# from modules/smartd/files/sshd.conf
			"puppet:///modules/sshd/sshd.conf",
		],
		mode    => 444,
		owner   => root,
		group   => root,
		# package must be installed before configuration file
		require => Package["sshd"],
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
		require    => [ Package["sshd"],
			        File["/etc/ssh/ssh_config"] ],
		# changes to configuration cause service restart
		subscribe  => [ Package["sshd"], 
                    File["/etc/ssh/ssh_config"] ],
	}
}
