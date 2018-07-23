class httpd {
    
    package { 'httpd': 
        ensure => installed,
    }

    service { 'httpd':
        enable => true,
        ensure => running,

        require=> [Package["httpd"]],
    }
}
