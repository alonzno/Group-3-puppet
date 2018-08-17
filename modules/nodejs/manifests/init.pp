class nodejs {
    package { 'nodejs-legacy':
        ensure => installed,
    }
    
    exec { "start_node":
        command => "node app",
        user => root,
        path => ['/usr/bin', '/usr/sbin', ],
        returns => '0',
        cwd => '/var/www/html/couchrecipes',
    }
}
