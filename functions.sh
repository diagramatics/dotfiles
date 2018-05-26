function repo() {
	cd ~/repos/$1
}

function openurl() {
	if [ $2 ]
	then
	  url=$1"&host_ports=$2"
	fi
	open -a google\ chrome ${url}
}

function npm-do { (PATH=$(npm bin):$PATH; eval $@;) }