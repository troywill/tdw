#!/usr/bin/env perl
use warnings;
use strict;

my $url = shift;
my $command = "youtube-dl --list-formats $url";
print `$command`;

print "Format? ";
chomp(my $format = <STDIN>);
$command = "youtube-dl --format $format '$url'";

system $command;
print "===> $command\n";
sleep 1;
system $command;
