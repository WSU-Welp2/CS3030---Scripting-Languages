#!/usr/bin/perl
#Justin Wilkinsonn
#Lab 7 - Perl Filter
#CS 3030 - Scripting
use strict;
use warnings;


if($#ARGV  != 1){
	print STDERR "Usage: ./filter.pl 'FROMSTRING' 'TOSTRING'";
	exit(1);
}

while(<STDIN>){
	s/$ARGV[0]/$ARGV[1]/g;
	print;
}
