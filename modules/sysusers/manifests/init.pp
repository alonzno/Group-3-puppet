class sysusers {
         user { 'dbeeman':
 			  ensure           => 'present',
       gid              => '500',
       home             => '/home/dbeeman',
       password         => '*',
       password_max_age => '99999',
       password_min_age => '0',
       shell            => '/bin/bash',
       uid              => '500',
     }
     user { 'jbeder1':
 			  ensure           => 'present',
       gid              => '501',
       home             => '/home/jbeder1',
       password         => '*',
       password_max_age => '99999',
       password_min_age => '0',
       shell            => '/bin/bash',
       uid              => '501',
     }
     user { 'mhagel2':
 			  ensure           => 'present',
       gid              => '502',
       home             => '/home/mhagel2',
       password         => '*',
       password_max_age => '99999',
       password_min_age => '0',
       shell            => '/bin/bash',
       uid              => '502',
     }
     user { 'ashears':
 			  ensure           => 'present',
       gid              => '503',
       home             => '/home/ashears',
       password         => '*',
       password_max_age => '99999',
       password_min_age => '0',
       shell            => '/bin/bash',
       uid              => '503',
     }
     user { 'alegge':
 			  ensure           => 'present',
       gid              => '504',
       home             => '/home/alegge',
       password         => '*',
       password_max_age => '99999',
       password_min_age => '0',
       shell            => '/bin/bash',
       uid              => '504',
     }
     user { 'alajaji':
 			  ensure           => 'present',
       gid              => '505',
       home             => '/home/alajaji',
       password         => '*',
       password_max_age => '99999',
       password_min_age => '0',
       shell            => '/bin/bash',
       uid              => '505',
     }
     user { 'injoker':
 			  ensure           => 'present',
       gid              => '506',
       home             => '/home/injoker',
       password         => '*',
       password_max_age => '99999',
       password_min_age => '0',
       shell            => '/bin/bash',
       uid              => '506',
     }
     user { 'mantail':
 			  ensure           => 'present',
       gid              => '507',
       home             => '/home/mantail',
       password         => '*',
       password_max_age => '99999',
       password_min_age => '0',
       shell            => '/bin/bash',
       uid              => '507',
     }
     user { 'vohoanvu':
 			  ensure           => 'present',
       gid              => '508',
       home             => '/home/vohoanvu',
       password         => '*',
       password_max_age => '99999',
       password_min_age => '0',
       shell            => '/bin/bash',
       uid              => '508',
     }
     user { 'Nosler':
 			  ensure           => 'present',
       gid              => '509',
       home             => '/home/Nosler',
       password         => '*',
       password_max_age => '99999',
       password_min_age => '0',
       shell            => '/bin/bash',
       uid              => '509',
     }
     user { 'aarcher':
 			  ensure           => 'present',
       gid              => '510',
       home             => '/home/aarcher',
       password         => '*',
       password_max_age => '99999',
       password_min_age => '0',
       shell            => '/bin/bash',
       uid              => '510',
     }
     user { 'crestonw':
 			  ensure           => 'present',
       gid              => '511',
       home             => '/home/crestonw',
       password         => '*',
       password_max_age => '99999',
       password_min_age => '0',
       shell            => '/bin/bash',
       uid              => '511',
     }
     user { 'quinnmil':
 			  ensure           => 'present',
       gid              => '512',
       home             => '/home/quinnmil',
       password         => '*',
       password_max_age => '99999',
       password_min_age => '0',
       shell            => '/bin/bash',
       uid              => '512',
     }
     user { 'mhernan7':
 			  ensure           => 'present',
       gid              => '513',
       home             => '/home/mhernan7',
       password         => '*',
       password_max_age => '99999',
       password_min_age => '0',
       shell            => '/bin/bash',
       uid              => '513',
     }
     user { 'stevev':
 			  ensure           => 'present',
       gid              => '514',
       home             => '/home/stevev',
       password         => '*',
       password_max_age => '99999',
       password_min_age => '0',
       shell            => '/bin/bash',
       uid              => '514',
     }

     ssh_authorized_key {"stevev":
     user => "stevev",
     type   => 'ssh-rsa',
     key  => "AAAAB3NzaC1yc2EAAAADAQABAAACAQDN0n7TZj/XUCs4ywvPLHfAFTHHkzFbxTW5GuHXMWIyrb7M84ySFSswd2n45Kh2IQey7sd97V0dj/EENKvy+5FCyyTTLWmnTXzTLMeb5qpV6Xful5vt6KjHd41ZAT2pKoK+yAjcTDRdMFq0QYDUEFug8ETv1/wPsJPgCLAlp0kJWJq8Q7AqmdCs+NilLvKKZUu62AMWNdNwDDBHCKgtn8TzgsEIxOgFgrrAXz+UdW5z4DLcmGx7wkdAAM0Q18ohC6L0WayiceGHuC/vHfHNklHOWoBF5L8YWRdGKEN40LMiu//31uuXrmV3ZrudbyhsRcWXr5dukbqD43PpsBzIOo3080FyZJWeLOpbE/6VsrNNlOtroKnuO+mIWOVsBQCH5R3UPwwxTtf8yyO7GvNm2HjRBgGLGXql3RhqIpTEVUfzXqadX+b/v8ChuBjYtegr2CWhs85qGj/2gNanZjfE8NJVa8OymuiQi5boRGsoDKXY1F7hnaZNL4CYyW1yAp44evDyohp/E9+YY3I/RdUfZ/apelHIVNXL4bx25oPUT7/jqqJi3RcyDQugZLH55QWiE1NkFqJqwTif6b6hcsdhIlVuNhzuXKneTm74PCQ13Ui1nY9mx00wjnG6bXiHLy1mKXshl7i8LX9aK7hAzTeSWPnKJpJ2+UeLrywEp3FKsRbt1Q==",
 }
}
