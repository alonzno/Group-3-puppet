class webappstack {
    package {
        "nodejs":
        ensure => installed,
    }
    package {
        "npm":
        ensure => installed,
    }

    package {
        "express":
        ensure => installed,
        provider => "npm",
        require => Package["npm"],
    }
    

}
