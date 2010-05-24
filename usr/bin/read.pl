#!/usr/bin/env perl
use strict;
use warnings;

open( my $in, "<", "A.wav");

my $buffer;
my $memory_location = 0;
my $counter = 0;
while (1) {
    my $byte = read ( $in, $buffer, 1 );
    last if ( $byte != 1 );
    my $decimal = ord($buffer);
    printf ( "%d|%x:%x\n", $counter, $counter, $decimal );
    $counter++;
}
