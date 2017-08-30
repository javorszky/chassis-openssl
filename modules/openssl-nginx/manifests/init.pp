class openssl-nginx {
	if ( ! defined( File["/etc/nginx/sites-available/${name}.d"] ) ) {
		file { "/etc/nginx/sites-available/$fqdn.d":
			ensure => directory,
			require => Package['nginx']
		}
	}
	
	file { "/etc/nginx/sites-available/$fqdn.d/ssl":
		content => template('openssl-nginx/site.nginx.conf.ssl.erb'),
		require => File[ "/etc/nginx/sites-available/$fqdn.d" ],
		notify => Service['nginx'],
	}
}
