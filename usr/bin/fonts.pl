#!/usr/bin/env perl
use warnings;
use strict;

my $sleep = shift;

my @fonts = </lib/kbd/consolefonts/*.gz>;

foreach my $font ( @fonts ) {
    print `clear`;
    print "\n==> $font <==\n";
    `setfont $font`;
    `setfont -16 $font`;
    print `showconsolefont`;
#    select (undef, undef, undef, $sleep);
    <STDIN>;
}
