#!/bin/sh
ipt_run () {
	RUN="/sbin/iptables $@"
	echo "$LT_date $LT_hora $LT_datetime $LT_name $LT_originator $RUN" >> /tmp/blockedip
	echo -e "\033[1;31m" $RUN "\033[0m"
	$RUN
}

[ ! -z $LT_ip ] && {
	[ ! -z $LT_port ] && {
		ipt_run -I INPUT -s $LT_ip -p TCP --dport $LT_port -j DROP
	} || {
		ipt_run -I INPUT -s $LT_ip -p TCP -j DROP
	}
}
