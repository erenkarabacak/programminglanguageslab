use strict;
use warnings;
use Data::Dumper qw(Dumper);


my $file_name = $ARGV[0];
open FILE, '<', $file_name or die "Can not open $file_name!\n";

my @lines = <FILE>;
close FILE;

my %hash = () ;




foreach my $i (@lines) {
  chomp $i; 
  if ($i =~ /(.*) \- \- \[(.*) \-(.*)\] \"(.*) (.*) HTTP\/(.*)\" (\d{3}) (.*)/)    
{	
	my $client = $1;
	my $date = $2;
	my $request = $4 . " " . $5;
	my $status = $7;
	my $object_size = $8;
	
	my @value = ($request, $status, $object_size);
	
	push @{$hash{$client}{$date}} , @value; 
 }
} 

print Dumper \%hash;




