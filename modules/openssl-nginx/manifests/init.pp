class openssl-nginx {
	file { "/etc/nginx/sites-available/$fqdn-ssl":
		content => template('openssl-nginx/site.nginx.conf.ssl.erb'),
		notify => Service['nginx'],
	}

	file { "/etc/nginx/sites-enabled/$fqdn-ssl":
		ensure => link,
		target => "/etc/nginx/sites-available/$fqdn-ssl",
		notify => Service['nginx']
	}
}
