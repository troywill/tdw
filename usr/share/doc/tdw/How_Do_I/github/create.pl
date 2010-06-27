#!/usr/bin/env perl
use warnings;
use strict;

my $API = `cat API`;
chomp $API;

print `curl -F 'login=troywill' -F "token=$API" http://github.com/api/v2/yaml/repos/create/ -F '

