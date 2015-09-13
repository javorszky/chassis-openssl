openssl::certificate::x509 { 'vagrant.local':
  country      => 'CH',
  organization => 'Example.com',
  commonname   => $fqdn,
}


file { '/vagrant/vagrant.local.cert':
	ensure => present,
	source => '/etc/ssl/certs/vagrant.local.crt',
	mode => '0644',
}

include ::openssl-nginx
