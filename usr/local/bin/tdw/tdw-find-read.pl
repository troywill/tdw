#!/usr/bin/env perl
use warnings;
use strict;

my @files;
my @sizes;

while (<>) {
    #    dev=2083 name=w.jpg path=./w.jpg ino=42 size=32484
    chomp;
    if ( /^dev=(\d+) name=(.*?) path=(.*?) ino=(.*?) size=(.*?)$/ ) {
	push @files, { dev => $1, name => $2, path => $3, ino => $4, size => $5 };
    }
}
my %duplicates;

foreach my $href ( @files ) {
    my $size = $href->{size};
    my $name = $href->{name};
    $duplicates{$size} = [] unless exists $duplicates{$size};
    push @{$duplicates{$size}}, $name;
}

foreach my $size (sort keys %duplicates) {
#    print "$md5sum: ";
    my @names = @{$duplicates{$size}};
    print "$size: ";
    print join ', ', sort @names;
    print ".\n";
}


exit;

__END__

for my $href ( @files ) {
    push @sizes, $href->{size};
  for my $role ( keys %$href ) {
#    print "$role=$href->{$role} ";
  }
#  print "\n";
}

# print $files[0];
my $count = 0;
foreach my $size ( @sizes ) {
#    print "$count: $size\n";
    $count++;
}

# Let's find duplicate files

sub find_by_size {
    my $size = shift;
}



__END__

    
    3    chomp;
    4     my ($city, $country) = split /, /;
    5     $table{$country} = [] unless exists $table{$country};
    6     push @{$table{$country}}, $city;
    7   }

