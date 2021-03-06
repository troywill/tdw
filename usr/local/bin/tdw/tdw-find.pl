#! /usr/bin/perl -w
    eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
        if 0; #$running_under_some_shell

use strict;
use File::Find ();

my @files;

# Set the variable $File::Find::dont_use_nlink if you're using AFS,
# since AFS cheats.

# for the convenience of &wanted calls, including -eval statements:
use vars qw/*name *dir *prune/;
*name   = *File::Find::name;
*dir    = *File::Find::dir;
*prune  = *File::Find::prune;

sub wanted;
my $count = 0;

# Traverse 
open( my $array_file, ">", './array_file' ) or die "Unable to open ./array_file";
File::Find::find({wanted => \&wanted}, '.');
for my $href ( @files ) {
  for my $role ( keys %$href ) {
    print $array_file "$role=$href->{$role} ";
  }
  print $array_file "\n";
}
exit;

sub wanted {
    # $count++;
    # if ( $count==100 ) {
    # 	for my $href ( @files ) {
    # 	    for my $role ( keys %$href ) {
    # 		print "$role=$href->{$role} ";
    # 	    }
    # 	    print "\n";
    # 	}
    # 	exit;
    # }
    my $rec = {};
    my ($dev,$ino,$mode,$nlink,$uid,$gid);
    (($dev,$ino,$mode,$nlink,$uid,$gid) = lstat($_));

    if ( -f $_ ) {
	$rec->{size} = -s _;
	$rec->{name} = $_;
	$rec->{path} = $name;
	$rec->{dev} = $dev;
	$rec->{ino} = $ino;
	push @files, $rec;
    }
#    print "$name\n";
}
