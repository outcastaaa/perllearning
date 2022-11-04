#!/usr/bin/perl
use v5.34;
# state $a;
# while(<>){
# chomp $_;
#  $a.=$_;
# }
# print "$a";


# foreach $_(<>){
# chomp($_);
# push @new, $_;
#  print @new;
# }


# chomp (@a);


# while(<>){

my $content = '1.txt';
open LOG, $content;
foreach $_(readline $content){
    chomp($_);
    $a .= $_;
} 
print $a;
# if($a =~ /fred/){
#  print "匹配到了fred";
#  }else{ 
#     print "未匹配到fred\n";
#  }



# }