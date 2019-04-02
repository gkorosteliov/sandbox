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
#!/usr/bin/perl -w

use strict;
use warnings;

$| = 1;
undef $/;

if ($#ARGV < 0)
{
	usage();
}

my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
$year =~ s/^1/20/;
print "Time: $hour:$min:$sec $mday/$mon/$year\n";

my $in_file = $ARGV[0];
my $out_file = $in_file."out";

if (! -e $in_file)
{
	print STDERR "Error: $in_file does not exist.\n";
	exit 1;
}

open (IN, "<$in_file");
my $content = <IN>;
close (IN);

$content=process_file($in_file, $content);

open (OUT, ">$out_file");
print OUT $content;
close (OUT);
exit 0;

sub process_file
{
	my($file_name,$cont)=@_;
	
	my $counter = ($cont =~ s/bookpart/BOOKPART/sg);
	print $cont."\n";
	print "There were $counter replacements in $file_name\n";
	
	return $cont;
}

sub usage 
{
	print "*********\nUsage:\n";
	print "example1.pl <input_file>\n";
	print "Example:\n";
	print "example.pl test.txt\n*********\n";	
	exit 0;
}
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
