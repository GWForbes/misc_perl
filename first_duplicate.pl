#!/usr/bin/env perl

use strict;
use warnings;
my @a = (2, 1, 3, 5, 3, 2);

print firstDuplicate(\@a);
print "\n";

sub firstDuplicate {
    my ($a) = @_;
    my $tracker = {};
    foreach my $b (@{$a}){
        if($tracker->{$b}) {
            return $b;
        } else {
            $tracker->{$b} = 1;
        }
    }
    return -1;
}

