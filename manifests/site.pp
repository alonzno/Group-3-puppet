node ip-10-0-5-169 {
}

node ip-10-0-5-58 {
}

node ip-10-0-5-189 {
    cron { "puppet update":
            command => "cd /etc/puppet && git pull -q origin master",
            user    => root,
            minute  => "*/5",
    }
}
