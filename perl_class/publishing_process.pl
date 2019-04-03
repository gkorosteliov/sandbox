#!/usr/bin/perl -w

use lib "c:\\Galina_TR\\perl";

use Book;
use Ebook;
use Media;
use strict;

my $book = new Book( "Cooking class", "Kevin Baa", "978-0-9882625-9-0");
my $author = $book->getAuthor();
print "This is a good author : $author\n";
$book->publish();

print "\n";

$book = new Ebook( "Painting class", "Kevin Boo", "978-0-9882625-9-2");
$author = $book->getAuthor();
print "This is a good author : $author\n";
$book->publish();

print "\n==Now abstract call==\n\n";

my $media = Media->instantiate("Ebook", "Wild cats", "Kevin Moo", "978-0-9882625-9-3");
$media->publish();

print "\n";

my $media = Media->instantiate("Book", "House plants", "Kevin Doo", "978-0-9882625-9-4");
$media->publish();

exit;
