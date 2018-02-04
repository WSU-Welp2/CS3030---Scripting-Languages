#!/usr/bin/perl -w
#Justin Wilkinson
#Lab 8 - Sockets
#CS 3030 - Scripting

use strict;
use warnings;
use IO::Socket;

if($#ARGV != 1){
	die "Error: Usage: ./socket.pl HOSTNAME SOCKETNUMBER";
}

my $remote = IO::Socket::INET->new(  
	 Proto=> "tcp",  
	 PeerAddr => $ARGV[0], 
	 PeerPort => $ARGV[1], )
	 or die "Error: Could not connect to provided host and socket.";  
my $line = <$remote>;
print $line;
exit(0); 
