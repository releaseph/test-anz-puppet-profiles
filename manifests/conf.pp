### Class profile::conf
### Clone TNG Config Repo

class profile::conf{
    file {'/etc/puppetlabs/code/modules/tng_conf/':
		ensure => 'absent',
		force => true,
	}~>
	exec {'download config repo':
        command => '/usr/bin/git clone https://github.com/releaseph/test-anz.git /etc/puppetlabs/code/modules/tng_conf/files/',
		refreshonly => 'true',
    }
}
