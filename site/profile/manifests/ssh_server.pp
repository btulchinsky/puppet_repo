class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDeinp5iS0j/nCKE2MvczGbC50gC3jJj5J0el5H0Cxq0ZRA58876a/19/YRID5xxdDgMY5+XrH1uQUdgdtnNd2adNAtIC0hHITKnhfTLTnP5dc9t+LM85elM+3BZhfxtREvLR3F0tTqnsoNgG16ktfnsKThsMPstlN2Lha/WEagevI2AWALK2tMJ9sbPRLC24hfZXttL55f3Om4zysOcTuSf/ULrOvvyriS0BZ30qSsKLxda+qKoCPqYt3bfKcpTMfZ7PiADWMthu/WaNFBy04cyRL22n1pWR2azU6zR0DaxTolVeevA2qur0utW04XYj1/wty+sv0PPJSSebfffOnb',
	}  
}
