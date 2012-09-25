#!/usr/bin/env perl
use warnings;
use strict;
use Weather::Underground;

my $place = $ARGV[0];
# my $place = "Riverside, California";

my $weather = Weather::Underground->new(
				     place => $place,
				     debug => 1,
				    )
  || die "Error, could not create new weather object: $@\n";

my $arrayref = $weather->get_weather()
  || die "Error, calling get_weather() failed: $@\n";

foreach (@$arrayref) {
  while ((my $key, my $value) = each %{$_}) {
    print "\t$key = $value\n";
  }
}
