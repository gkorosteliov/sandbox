#!/usr/bin/perl -w

$| = 1;
undef $/;

if ($#ARGV < 0)
{
	usage();
}
my $in_file = $ARGV[0];
my $out_file = $in_file."out";

open (IN, "<$in_file");
my $content = <IN>;
close (IN);

$content =~ s/bookpart/BOOKPART/sg;
print $content."\n";

open (OUT, ">$out_file");
print OUT $content;
close (OUT);
exit 0;

sub usage 
{
	print "*********\nUsage:\n";
	print "example1.pl <input_file>\n";
	print "Example:\n";
	print "example.pl test.txt\n*********\n";	
	exit 0;
}
