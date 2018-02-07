### Class profile::conf
# Download Conf Repo

class profile::conf{
#    file {'/etc/puppetlabs/code/modules/tng_conf/':
#		ensure => 'absent',
#		force => true,
#	}~>
	exec {'download config repo':
        command => '/usr/bin/git clone https://github.com/releaseph/test-anz.git /etc/puppetlabs/code/modules/tng_conf/',
#		refreshonly => 'true',
    }
#	file { '/mnt/data/www/tng.cambridge.edu.au/config/site.php':
#             ensure => file,
#             owner  => 'ec2-user',
#             group  => 'ec2-user',
#             mode   => '0644',
#             source => 'puppet:///modules/tng_conf/site.php',
#			}
}
