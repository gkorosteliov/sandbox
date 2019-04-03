#!/usr/bin/perl


$home_dir = "/sandbox/home_dir";
$jurs_dir = "/data/jurs/";
$out_dir = "/sandbox/home_dir/out/";
$log_file_dir = "/sandbox/home_dir/log"; 
$log_file_name = "log_file.txt";
$result_file = "res.txt";

my $unixrm = "/usr/bin/rm -rf ";

@all_jurs = ('Alta/', 'BC/', 'For/', 'Man/', 'Nat/', 'NB/', 'NS/', 'NWT/', 'Nfld/', 'Nun/', 'Ont/', 'PEI/', 'Que/', 'Sask/', 'Yukon/', 'Other/');
foreach $jur(@all_jurs)
{
		&startHome;
}
                
sub startHome
{
    if (!opendir(DIR, $jurs_dir.$jur)) 
	{
        print "Can't opendir $jurs_dir: $!";
    } 
	else
	{
		open(LOG_FILE,">".$log_file_dir."/".$log_file_name);
		my @files = readdir DIR;
		foreach (sort @files) 
		{
			$path = $_;
			if ( (-d $jurs_dir.$jur.$path) && ($path ne ".") && ($path ne ".." ))
			{
				$path = $jurs_dir.$jur.$path;
				$cmdexe = system("cd ".$out_dir."; co ".$path);
				print LOG_FILE $path."\n";
				$cmdexe = system("echo '********************************************' >> ".$log_file_dir."/".$result_file);
				$cmdexe = system("echo '".$path."' >> ".$log_file_dir."/".$result_file);
				#$cmdexe = system("grep '& '  ".$out_dir."* >> ".$log_file_dir."/".$result_file);
				#$cmdexe = system("grep 'oard?s'  ".$out_dir."* >> ".$log_file_dir."/".$result_file);
				$cmdexe = system("grep -i 'North York Roofing'  ".$out_dir."* >> ".$log_file_dir."/".$result_file);
				$cmdexe = system($unixrm.$out_dir."*");
				}

			}
			closedir DIR;
			close(LOG_FILE); 
        }
}
