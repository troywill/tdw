#!/usr/bin/env perl
use warnings;
use strict;
use LWP::Simple;

my $station = 'KIIS-FM';
$station = $ARGV[0] if defined($ARGV[0]);
print "Station: $station\n";
my $duration = '5:00';
$duration = $ARGV[1] if defined($ARGV[1]);

# http://pyther.net/wp/2010/08/listen-to-iheartradio-without-flash/
my $url = "http://p2.${station}.ccomrcdn.com/player/player_dispatcher.html?section=radio&action=listen_live";
my $page = get $url;
open(my $out, '>', '/tmp/kfi') or die;
print $out $page;
close $out;
$page =~ m/primary_location=\"(.*?)\"/;
print "=>$1<=\n";
my $command = "mplayer -novideo -ao alsa -endpos $duration '" . $1 . "'";
print "=> $command\n";
system $command;
