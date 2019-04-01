#!/usr/bin/perl -w

$| = 1;
undef $/;

my $in_file = "C:\\Galina_TR\\perl\\test_file\\test.txt";
my $out_file = $in_file."out";

open (IN, "<$in_file");
my $content = <IN>;
close (IN);

$content =~ s/bookpart/BOOKPART/sg;
print $content."\n";

open (OUT, ">$out_file");
print OUT $content;
close (OUT);