#!/usr/bin/env perl
use warnings;
use strict;

my $API = `cat API`;
chomp $API;

print `curl -F 'login=troywill' -F "token=$API" http://github.com/api/v2/yaml/repos/create/ -F 'name=getfit-perl' -F 'description=Asus Perl'`;
# description     => repo description
# homepage    => homepage url
# public      => 1 for public, 0 for private

