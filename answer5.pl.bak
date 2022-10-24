#读取标准输入:

#!user/bin/perl
use v5.34;

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


#print (2+3)*4 ."\n";
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

printf "the items are:\n". ("%10s\n" x @item),@item;

# 文件句柄
open CONFIG,'> dino';  #建立dino文件

#编码类型
#$ perl -MEncode -le "print for Encode->encodings(':all')"
open BEDROCK, '>:encoding(UTF-16LE)','dino';
close BEDROCK;
close CONFIG;

if (! open LOG,'>>','logfile'){
    die "cannot create logfile: $!";
}

#say
use v5.34;
my @array = qw{a f  g h };
say @array;
say "@array";

#open BEDROCK;
#say BEDROCK "HELLO!";
#close BEDROCK;

#标量变量的文字句柄
my $rocks_fh;
open $rocks_fh,'<','rocks.txt' or die "could not open rocks.txt: $!";

open $rocks_fh,'<','rocks.txt' or die "could not open rocks.txt: $!";

my $rock;
open my $rock_fh,'>>','rocks.txt' or die "could not open rocks.txt: $!";
foreach my $rock ( qw {slata lava granite}){
    say $rock_fh $rock; #此处的 $rock_fh 是文字句柄
}

print $rock_fh "limestion\n";

#rocks.txt内容：
#slata
#lava
#granite
#limestion


#print {$rock_fh} $_;
#slata
#lava
#granite


#print {$rock_fh} "limestion\n";
#同print $rock_fh "limestion\n";
close $rock_fh;

#114-1：
print reverse <>;

#114-2:
my $example;
print "please enter strings:\n";
chomp(my @lines = <STDIN>);
print ("1234567890" x 7,"\n");


foreach $example(@lines){
    printf "%20s\n", $example; #此处的 $rock_fh 是文字句柄
}
#或者 printf "%20s\n" x @lines, @lines;

#114-3:
print "please enter a number:\n";
my $zhanwei = <STDIN>;
print "please enter strings:\n";
chomp (my @lines = <STDIN>);
print ("1234567890" x 7,"\n");

printf "%*s\n" x (@lines + 1), "$zhanwei", @lines;

 
