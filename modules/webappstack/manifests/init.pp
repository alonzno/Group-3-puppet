class webappstack {
    package {
        "nodejs":
        ensure => installed,
    }
    nodejs::npm {'express from the npm registry':
        ensure => 'present',
        package => 'express',
        target => '/opt/packages',
    }
}
