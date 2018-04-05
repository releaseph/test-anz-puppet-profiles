### Class profile::conf
### Clone TNG Config Repo

class profile::conf{
    file {'/etc/puppetlabs/code/modules/tng_conf/':
		ensure => 'absent',
		force => true,
	}~>
	exec {'download config repo for Staging':
        command => '/usr/bin/git clone -b test https://github.com/releaseph/test-anz.git /etc/puppetlabs/code/modules/tng_conf/files/',
		refreshonly => 'true',
    }~>
	file {'/etc/puppetlabs/code/modules/tng_conf_live/':
		ensure => 'absent',
		force => true,
	}~>
	exec {'download config repo for LIVE':
        command => '/usr/bin/git clone -b production https://github.com/releaseph/test-anz.git /etc/puppetlabs/code/modules/tng_conf_live/files/',
		refreshonly => 'true',
    }
}
