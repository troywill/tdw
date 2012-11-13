#!/usr/bin/env perl
use warnings;
use strict;

chomp(my $file = $ARGV[0]);
my $backup = $file . 'bak';
my $regexp = '\* DONE';
my $replacement = '* TODO';
open(my $oldorg, "<", $file)      # open for update
    or die "Can't open $file for reading: $!";
open(my $neworg, ">", $backup)
    or die "Can't open $backup for writing: $!";
while (<$oldorg>) {
    s/$regexp/$replacement/;
    s/\[X\]/[ ]/g;
    s/\[\d+\/\d+]/[\/]/g;
    print $neworg $_ or die "can't write $neworg: $!";
}

close($oldorg)            or die "can't close $oldorg: $!";
close($neworg)            or die "can't close $neworg: $!";
rename($backup, $file)   or die "can't rename $backup $file: $!";

