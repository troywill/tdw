#!/usr/bin/env perl
use warnings;
use strict;

my $search_term = $ARGV[0] or die;
my $search_directory = "$ENV{HOME}/org";

system("ack $search_term $search_directory");



__END__



&search_filenames( $search_term );
&grep_files( $search_term );

sub search_filenames {
  my $search_term = shift;
  chdir( $search_directory );
  print "=> $search_directory <=\n";
  print "File names\n", "-" x 40, "\n";
  print `find . | grep -i $search_term`;
}

sub grep_files {
  my $search_term = shift;
  chdir( $search_directory );
  print "\nGrepping ...\n", "-" x 40, "\n";
  print `grep -nir $search_term`;
}
