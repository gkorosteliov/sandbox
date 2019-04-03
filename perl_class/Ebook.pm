#!/usr/bin/perl -w

package Ebook;

use Book;
use strict;

our @ISA = qw(Book);

sub publish {
	my( $self ) = @_;
	print "Publish online \"".$self->{_name}."\".\n";
}

1;