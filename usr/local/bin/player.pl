#!/usr/bin/env perl
$| = 1;
use warnings;
use strict;

my @files = <*.wav>;

foreach my $wave ( @files ) {
    sleep 3;
    print "n\n\n\========================================================================\n";
    print "$wave\n";
    `mplayer $wave`;
    print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n\n";

}
