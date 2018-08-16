class { 'nodejs': 
    package { 'nodejs-legacy':
        ensure => installed,
    }
}
