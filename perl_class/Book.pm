#!/usr/bin/perl -w

package Book;

use strict;

sub new {
   my $class = shift;
   my $self = {
      _name => shift,
      _author  => shift,
      _isbn       => shift,
   };
   # Print all the values just for clarification.
   print "Name is $self->{_name}\n";
   print "Author is $self->{_author}\n";
   print "ISBN is $self->{_isbn}\n";
   bless $self, $class;
   return $self;
}
sub setName {
   my ( $self, $name ) = @_;
   $self->{_name} = $name if defined($name);
   return $self->{_name};
}

sub getName {
   my( $self ) = @_;
   return $self->{_name};
}

sub setAuthor {
   my ( $self, $author ) = @_;
   $self->{_author} = $author if defined($author);
   return $self->{_author};
}

sub getAuthor {
   my( $self ) = @_;
   return $self->{_author};
}

sub setIsbn {
   my ( $self, $isbn ) = @_;
   $self->{_isbn} = $isbn if defined($isbn);
   return $self->{_isbn};
}

sub getIsbn {
   my( $self ) = @_;
   return $self->{_isbn};
}

sub publish {
	my( $self ) = @_;
	print "Print \"".$self->{_name}."\" on paper.\n";
}

1;