#!/usr/bin/env perl
print "---------------------------\n", `date`, "---------------------------\n";
use strict;
use warnings;

&get_asus_model;
&print_wireless_operating_state;
&print_wired_operating_state;

sub get_asus_model {
    my $cpuinfo = `cat /proc/cpuinfo | grep name`;
    my $dmesg = `dmesg`;
    print $cpuinfo;
}

sub print_wireless_operating_state {
    my $wireless_operating_state = `cat /sys/class/net/wlan0/operstate`;
    print "Wireless operating state: $wireless_operating_state\n";
}

sub print_wired_operating_state {
    my $wired_operating_state = `cat /sys/class/net/eth1/operstate`;
    print "Wired operating state: $wired_operating_state\n";
}
