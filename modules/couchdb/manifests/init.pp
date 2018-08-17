class couchdb {
    package { 'couchdb':
        ensure => installed,
    }
    exec { "start_couch":
        command => "sudo /etc/init.d/couchdb start",
        unless  => "/bin/grep 'inventory_initialized' /etc/puppet/puppet_history",
        returns => '0',
    }
    service { 'couchdb':
        ensure => running,
        enable => true
        require => Package['couchdb'],
        require => Exec['start_couch'],
    }
}
