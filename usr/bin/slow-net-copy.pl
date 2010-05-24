#!/usr/bin/env perl
# page 107
use strict;
use IO::Socket;
use constant DELAY => 0.0001;
$| = 1;
open(IN, 'thumb.jpg');

my ($bytes_out,$bytes_in) = (0,0);

my $host = shift || 'troywill.com';
my $port = shift || '2007';

my $socket = IO::Socket::INET->new("$host:$port") or die $@;

my $buffer;
my $byte;

while(1) {
    $byte = sysread (IN,$buffer,1);
    print ".";
    print $socket $buffer;
    select(undef,undef,undef,DELAY);
    $bytes_out += length($buffer);
    $bytes_in += length($buffer);
    last unless $byte > 0;
}

# while (defined(my $msg_out = STDIN->getline)) {
# }

$socket->close or warn $@;
print STDERR "bytes_sent = $bytes_out, bytes_received = $bytes_in\n";
