#!/usr/bin/env perl
use strict;
use warnings;

my $command = 'mplayer -ss 1780 -noconsolecontrols /home/troy/audio/m3-02.mp3 2>/dev/null';

open ( MP, "$command |");
my $i = 0;
while (my $line = <MP>) {
    print $i++, "$line\n";
    close MP if ( time - $^T ) > 60
}
