### Class profile::tng::go
# Setup TNG Go application

#class profile::tng::go(
#    $url = hiera('tng::go::url'),
#) {
class profile::tng::go {
#    include ::profile::tng::apache
#    include ::profile::base::tdrepo

#    apache::vhost {$url:
#        port        => '80',
#        docroot     => '/mnt/data/www/tng.cambridge.edu.au',
#        directories => [{
#            path           => '/mnt/data/www/tng.cambridge.edu.au',
#            options        => ['Indexes','FollowSymLinks'],
#            allow_override => ['All'],
#            order          => 'Allow,Deny',
#            allow          => 'from all',
#        }],
#    }

    file {'/mnt/data/www/tng.cambridge.edu.au':
        ensure => directory,
    }

	file { '/mnt/data/www/tng.cambridge.edu.au/config/site.php':
             ensure => file,
             owner  => 'ec2-user',
             group  => 'ec2-user',
             mode   => '0644',
             source => 'puppet:///modules/tng_conf/site.php',
			}
    # package {'cup-tng-go':
    #     ensure => 'present',
    # }

}
