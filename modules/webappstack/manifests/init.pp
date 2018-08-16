class webappstack {
    package {
        "nodejs":
        ensure => installed,
    }
    nodejs::npm {'express':
        target => '/opt/packages',
    }
}
