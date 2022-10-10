#读取标准输入:

#!user/bin/perl
use v5.34;
use warnings;

#while (defined ($line = <STDIN>)){
#while (<STDIN>){
#    print " i saw $_";
#}

#foreach (<STDIN>){
#    print "i saw $_";
#}



#while (<<>>) {
#  print "i saw $_";
#}
    
#输出格式问题
my @larry = qw{6 6 7 sgg 32 67};
print @larry,"\n";
print "@larry\n";


print (2+3)*4 ."\n";
print ((2+3)*4);

#printf
my $user;
my %days_to_die;
printf "hello,%s; your password expeirs in %d days.\n", $user, %days_to_die;

printf "%g %g %g %d\n",5/2,51/17,51**17,81.77;
printf "%6d\n",42;
printf "%2d\n",2e3 + 1.95; 
printf "%9d\n",2e3 + 1.95; 

printf "%10s\n", "lily";
printf "%-20s\n","bobaaaaaa";

printf "%12f\n",6 *7 +2/3;
printf "%12.3f\n",6 *7 +2/3;
printf "%12.0f\n",6 *7 +2/3;

printf "monthly rate is: %.3f%%\n",5.35/12;

#数组和printf
my @item = qw{wilama dino pelle};
my $format = "the item are:\n".("%s\n" x @item);
## print "the format is >>$format<< \n";
printf $format,@item;
