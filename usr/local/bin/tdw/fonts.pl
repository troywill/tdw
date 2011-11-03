#!/usr/bin/env perl
use warnings;
use strict;

my @fonts = </lib/kbd/consolefonts/i*>;

foreach my $font ( @fonts ) {
    display($font);
    `setfont $font`;
    `setfont -16 $font`;
    print `showconsolefont`;
    <STDIN>;
}

sub display {
    my $font = shift;
    system($font);
    my ( $wchar, $hchar, $wpixels, $hpixels ) = GetTerminalSize();
    print "$font, $wchar, $hchar, $wpixels, $hpixels\n";
}

