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

    file {"/var/www/html/": 
        ensure => directory,
        recurse => true,
        mode => 644,
        owner => root,
        group => root,

        require => Package["apache2"],
        source => "puppet:///modules/apache2/public_html",
    }

    service { 'apache2':
        enable => true,
        ensure => running,

        require => [Package["apache2"], File["/etc/apache2/apache2.conf"]],
        subscribe => [Package["apache2"], File["/etc/apache2/apache2.conf"]],
    }
}
