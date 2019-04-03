#!/usr/bin/perl -w

package Media;

use strict;

sub instantiate {
	my $self           = shift;
	my $requested_type = shift;
	my $location       = "$requested_type.pm";
	my $class          = "$requested_type";

	#print "Self=$self*\n";
	#print "requested_type=$requested_type*\n";
	#print "\@_=".@_."*\n";
	require $location;

	return $class->new(@_);
}

1;