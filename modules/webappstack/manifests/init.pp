class webappstack {
    package {
        "nodejs":
        ensure => installed,
    }
    nodejs::npm { 'express from GitHub':
        ensure  => 'present',
        package => 'express',
        source  => 'strongloop/express',
        target  => '/opt/packages',
    }
}
