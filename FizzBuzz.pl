#!/usr/bin/env perl

use strict;
use warnings;
no warnings 'recursion';

# FizzBuzz: Print Numbers 1-100
# But!
# For n%3 == 0 Print 'Fizz'
# and
# For n%5 == 0 Print 'Buzz'

fizzBuzz(1);

sub fizzBuzz {
    my $n = shift;
    if($n % 3 == 0) {
        print "Fizz";
    }
    if($n % 5 == 0) {
        print "Buzz";
    }
    if($n % 5 != 0 && $n % 3 != 0) {
        print $n;
    }
    print "\n";
    $n != 100 ? fizzBuzz($n+1) : return;
}   
