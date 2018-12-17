use strict;
use warnings;

print "Enter your word:";
my $str = <>;
chomp $str; 

if($str =~ /\s+/){ print "$str contains 0 or more white space\n"; }
if($str =~ /^[A-Z]+$/){ print "$str all contains capital letters (at least one).\n";}
if($str =~ /^(\s*|[A-Z]*)(\s|[A-Z])*(\s*|[A-Z]*)$/){ print "$str combination of capital letters and white-spaces.\n";}
if($str =~ /[A-Z]\d+/){ print "$str cotains  a capital letter followed by 0 or more digis\n";}

print "Enter a number: ";
my $n = <>;
chomp $n;
if($n =~ /^\d+\.\d+$/){ print "$n contains some digits before and after a decimal point.\n";}
if($n =~ /^\d{1,3}(\.\d{1,3}){3}$/){ print "$n is  might be an IP Adres.\n";}
