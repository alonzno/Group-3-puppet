class httpd {
    
    package { 'httpd': 
        ensure => installed,
        ensure=> present,
    }

    service { 'httpd':
        enable => true,
        ensure => running,

        require=> [Package["httpd"]],
    }
}
