class couchdb {
    package { 'couchdb':
        ensure => installed,
    }
    exec { "start_couch":
        command => "sudo /etc/init.d/couchdb start",
        user => root,
        path    => ['/usr/bin', '/usr/sbin',],
        returns => '0',
    }
    service { 'couchdb':
        ensure => running,
        enable => true,
        require => [Package['couchdb'], Exec['start_couch']],
    }
}
