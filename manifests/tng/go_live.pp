### Class profile::tng::go for LIVE
### Copy/Replace conf file from master to client


class profile::tng::go_live {

    file {'/mnt/data/www/tng.cambridge.edu.au':
        ensure => directory,
    }

	file { '/mnt/data/www/tng.cambridge.edu.au/config/site.php':
             ensure => file,
             owner  => 'ec2-user',
             group  => 'ec2-user',
             mode   => '0644',
             source => 'puppet:///modules/tng_conf_live/site.php',
			}
	
	file { '/etc/httpd/conf.d/academic.conf':
             ensure => file,
             owner  => 'ec2-user',
             group  => 'ec2-user',
             mode   => '0644',
             source => 'puppet:///modules/tng_conf/academic.conf',
			}
}
