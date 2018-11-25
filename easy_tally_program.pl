#!/usr/bin/env perl -X

use strict;
use warnings;

my $score_str = $ARGV[0]; #'EbAAdbBEaBaaBBdAccbeebaec';
if (!$score_str || $score_str eq 'help') {
    die "Usage: $0 EEAaabbeEbBBBCcCC";
}
if( $score_str !~ m/[a-z]/i ){
    die "Players are letters only";
}

my $players = {
    'a' => 0,
    'b' => 0,
    'c' => 0,
    'd' => 0,
    'e' => 0,
};

my @scores = split('',$score_str);

foreach my $score (@scores) {
    my $player = lc($score);
    my $point = $score =~ m/[A-Z]/ ? -1 : 1;
    $players->{$player} += $point;
}

foreach my $player (reverse sort {$players->{$a} <=> $players->{$b} || $b cmp $a } keys %$players) {
    print "$player: $players->{$player}\n";
}
