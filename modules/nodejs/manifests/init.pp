class { 'nodejs': 
    Package { 'nodejs-legacy':
        ensure => installed
    }
}
