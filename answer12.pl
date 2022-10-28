#stat 

my $filename = dino;
my ($dev,$ino,$mode,$nlink,$uid,$gid,$rdv,$size,$atime,$mtime,$ctime,$blksize,$blocks) = stat($filename);
print "$dev,$ino,$mode,$nlink,$uid,$gid,$rdv,$size,$atime,$mtime,$ctime,$blksize,$blocks\n";
#48,6192449487658443,33279,1,1000,1000,0,66,1666935135,1666593767,1666935132,4096,0



# localtime
my $timestamp = 1454133253;
my $date = localtime $timestamp;
print "$date \n";
#Sat Jan 30 05:54:13 2016
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime $timestamp;
print "$sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst\n";
#      13,   54,   5,   30,   0,   116,   6,    29,     0
#                           0-11,(1900+116),0-6,今年第几天

#time
my $now = gmtime;
print "$now\n"; #Fri Oct 28 04:29:15 2022

my $now = time;
print "$now\n"; #1666931355

#&按位与运算符
use v5.34;
my $number =137;
my $number_str ='137';
my $string = 'America';

say "number_str & string:", $number_str & $string;
#number_str & string:0
say "number & string:",$number & $string;
#number & string:0
say "number & number_str:",$number & $number_str;
#number & number_str:137
say "number_str & string:",$number_str & $string;
#number_str & string:0

#use v5.10;结果不一样
#number_str & string:!%
#number & string:0
#number & number_str:137
#number_str & string:0


#按照字符串运算
use v5.34;
my $number =137;
my $number_str ='137';
my $string = 'America';

say "number_str & string:", $number_str &. $string;
#number_str & string:!%
say "number & string:",$number &. $string;
#number & string:!%
say "number & number_str:",$number &. $number_str;
#number & number_str:137
say "number_str & string:",$number_str &. $string;
#number_str & string:!%