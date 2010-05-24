#!/usr/bin/perl
use warnings;
use strict;
while (<STDIN>) {
    my $ord = ord($_);
    my $chr = chr($_);
    print "$ord\t$chr\t$_\n";
}
