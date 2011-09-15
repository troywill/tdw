#!/usr/bin/env perl
use warnings;
use strict;

chdir $ENV{'HOME'};
system("rm -rvf .cache");
system("chromium &");
