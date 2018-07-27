class sysusers {

        group { 'sysadmin':
            ensure => 'present',
            gid => '5000',
        }


       user { 'dbeeman':
 			  ensure           => 'present',
       gid              => '500',
       home             => '/home/dbeeman',
       password         => '*',
       password_max_age => '99999',
       password_min_age => '0',
       shell            => '/bin/bash',
       uid              => '500',
       groups           => 'sysadmin',
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
       groups           => 'sysadmin',
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
       groups           => 'sysadmin',
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
       groups           => 'sysadmin',
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
       groups           => 'sysadmin',
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
       groups           => 'sysadmin',
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
       groups           => 'sysadmin',
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
       groups           => 'sysadmin',
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
       groups           => 'sysadmin',
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
       groups           => 'sysadmin',
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
       groups           => 'sysadmin',
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
       groups           => 'sysadmin',
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
       groups           => 'sysadmin',
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
       groups           => 'sysadmin',
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
       groups           => 'sysadmin',
     }


}
