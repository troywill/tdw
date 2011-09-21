#!/usr/bin/env perl
use warnings;
use strict;

my $b1 = 2828.26;
my $b2 = 961.40;

my $r1 = 0.1465;
my $r2 = 0.2299;

my $effective = (($b1 * $r1) + ($b2 * $r2)) / ( $b1 + $b2 );

print $effective, "\n";
