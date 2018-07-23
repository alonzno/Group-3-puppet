class apache2 {
    
    package { 'apache2': 
        ensure => installed,
    }

    file {"/etc/apache2/apache2.conf": 
        ensure => present,
        mode => 644,
        owner => root,
        group => root,

        require => Package["apache2"],
        source => "puppet:///modules/apache2/apache2.conf",
    }

    service { 'apache2':
        enable => true,
        ensure => running,

        require => [Package["apache2"], File["/etc/apache2/apache2.conf"]],
        subscribe => [Package["apache2"], File["/etc/apache2/apache2.conf"]],
    }
}
