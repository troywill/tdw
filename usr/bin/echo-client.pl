#!/usr/bin/env perl
# page 107
use strict;
use IO::Socket;
use constant DELAY => 0.25;
$| = 1;
open(IN, 'thumb.jpg');

my ($bytes_out,$bytes_in) = (0,0);

my $host = shift || 'troywill.com';
my $port = shift || '2007';

my $socket = IO::Socket::INET->new("$host:$port") or die $@;

while(defined(my $msg_out = STDIN->getline)) {
    print $socket $msg_out;
    my $msg_in = <$socket>;
    print $msg_in;

    $bytes_out += length($msg_out);
    $bytes_in += length($msg_in);
}

$socket->close or warn $@;
print STDERR "bytes_sent = $bytes_out, bytes_received = $bytes_in\n";

__END__
open(OUT, '>thumb.jpeg');
my $buffer;
my $byte;

while(1) {
    $byte = sysread (IN,$buffer,1);
    print ".";
    $byte = syswrite(OUT,$buffer);
    select(undef,undef,undef,DELAY);
    last unless $byte > 0;
}
