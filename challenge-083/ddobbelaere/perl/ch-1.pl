#!/usr/bin/perl

=pod
TASK #1 › Words Length
Submitted by: Mohammad S Anwar

You are given a string $S with 3 or more words.

Write a script to find the length of the string except the first and last words ignoring whitespace.
Example 1:

Input: $S = "The Weekly Challenge"

Output: 6

Example 2:

Input: $S = "The purpose of our lives is to be happy"

Output: 23
=cut

use v5.30;
use warnings;
use utf8::all;

use Test::More tests => 3;

sub count_inner_chars {
    my ($S) = @_;
    my @a   = split /\s+/, $S;
    length join '', splice @a, 1, -1;
}

#<<< Tests.
is count_inner_chars("The Weekly Challenge"),                    6;
is count_inner_chars("The purpose of our lives is to be happy"), 23;
is count_inner_chars("七、 八、 九、 十"),                          4;