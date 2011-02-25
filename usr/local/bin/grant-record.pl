#!/usr/bin/perl
use warnings;
use strict;

#############################################################
my $repeats = 0;
my $tag = 'yes';    # Write audiofile and text to a 
my $clear = `clear`;

sub arecord {
  my $phrase = shift;
  system("arecord -D plughw:default -f cd -t wav $phrase.wav >& /dev/null &");
}

sub get_ps {
  my $ps = `ps aux | grep -v grep | grep arecord | cut -c 10-15`;
  chomp $ps;
  print "DEBUG: ps is $ps\n";
  return $ps;
}

sub playback {
  my $phrase = shift;
  for ( 1 .. $repeats ) {
      print "********* $_\n";
#      system("mplayer  -ao alsa::device=hw=1.0 $phrase.mp3 >& /dev/null");
      system("mplayer  -ao alsa::device=hw=1.0 $phrase.wav ");
  }
  #system("dcop klipper klipper setClipboardContents \"$phrase.mp3\"");
}

#system("klipper &");

while (1) {
  print "Enter to record\n";
  chomp(my $answer = <STDIN>);
  chomp( my $phrase = `date +%Y%m%d-%H%M%S`);
  arecord $phrase;
  my $ps = get_ps;
  print $ps;
  print "Enter to stop recording\n";
  chomp( $answer = <STDIN>);
  system("kill -15 $ps");
  system("lame --preset voice $phrase.wav $phrase.mp3 >& /dev/null");
  print $clear;
  playback "$phrase";


#  unlink "$phrase.wav";
}
