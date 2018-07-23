class apache2 {
    
    package { 'apache2': 
        ensure => installed,
    }

    service { 'apache2':
        enable => true,
        ensure => running,

        require=> [Package["apache2"]],
    }
}
