#!/usr/bin/perl
print `date`;
use warnings;
use strict;
my $dane  = `ls -l /dev/disk/by-label | grep XACTI`;
# print $dane;
$dane =~ m/(sd.1)/;
my $device =' /dev/' . $1;
print $device;
print `sudo mount -v $device /mnt/dane`;
exit;
