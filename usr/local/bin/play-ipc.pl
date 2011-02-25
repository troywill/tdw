#!/usr/bin/env perl
use strict;
use warnings;

my $audio_file = shift;

my $command = 'mplayer -ss 1780 -noconsolecontrols $audio_file 2>/dev/null';

open ( MP, "$command |");
my $i = 0;
while (my $line = <MP>) {
    print $i++, "$line\n";
    close MP if ( time - $^T ) > 60
}
