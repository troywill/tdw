#!/usr/bin/env perl
use warnings;
use strict;

my $url = shift;
my $command = "youtube-dl --list-formats $url";
system $command;
$command = "youtube-dl --format 18 $url";
print "===> $command\n";
sleep 1;
system $command;
