class webappstack {
    package {
        "nodejs":
        ensure => installed,
    }
    package {
        "express":
        ensure => installed,
        provider => "npm",
    }
    

}
