#!/usr/bin/env perl
use strict;
use warnings;
use File::Copy;

# copy( "A.wav.unedited", "A.wav");

my $size = (stat("A.wav"))[7];

print $size, "\n";

open( my $in, "+<", "A.wav");
truncate( $in, $size-8192 );

exit;




my $buffer;
my $memory_location = 0;
my $counter = 0;


truncate( $in, 1024 );
close $in;

exit;
while (1) {
    my $byte = read ( $in, $buffer, 1 );
    last if ( $byte != 1 );
    my $decimal = ord($buffer);
    printf ( "%d|%x:%x\n", $counter, $counter, $decimal );
    $counter++;
}
