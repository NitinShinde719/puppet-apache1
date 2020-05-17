# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache::params
class apache::params {

  $install_ensure = 'present'
  case $::osfamily {        #case $facts['os']['family']  <-- we can use this as well
	'RedHat': {
      	    $install_name = 'httpd'
	}
	'Debian': {
	     $install_name = 'apache2'

	}

  }
}
