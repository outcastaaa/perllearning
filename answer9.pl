#!/user/bin/perl

#s///
$_="he's out with barney tonight.";
s/barney/fred/;
print "$_\n";

s/with (\w+)/aganist $1's team/;
print "$_\n";

$_="huge dinosaur";
s/\w+$/($`!)$&/;
print "$_\n";
#huge (huge !)dinosaur



#/r的用法
my $original = "fred ate a rib";
(my $copy = $original) =~ s/a rib/10 ribs/;
print "$copy \n $original\n";  #fred ate 10 ribs, fred ate a rib

my $original = "fred ate a rib";
my $copy = $original =~ s/a rib/10 ribs/;
print "$copy \n $original\n";   #1, fred ate 10 ribs

my $original = "fred ate a rib";
my $copy = $original =~ s/a rib/10 ribs/r;
print "$copy \n $original\n"; # fred ate 10 ribs, fred ate a rib




$_="i saw Barney with fred.\n";
s/(\w+) with (\w+)/\U$2\E with $1/i;
print "$_"; 
#i saw FRED with Barney.

$_="i saw barney with fred.\n";
s/(fred|barney)/\u$1/ig;
print "$_"; 
#i saw Barney with Fred. \u只能匹配第一个字母

$_="i saw barney with fred.\n";
s/(fred|barney)/\U\l$1/ig;  #\l首字母小写，\U全大写
print "$_"; 
#i saw bARNEY with fRED.

#\L\u在其他地方的应用
my $input = 'fRED';
my $string = 'FREd';
if ("\L\u$input" eq "\L\u$string"){
    print "$input and $string are the same.\n";
}
#fRED and FREd are the same.

#预转义
$_="i saw barney with fred.\n";
my $prefix = quotemeta($input_pattern);
if ( s/$prefix(Fred)/$1/ig ){
    print "replace $1\n";
}
#replace fred

#split
my @fields = split /:/,"abc:sdvf:df::sdfe";
foreach $_(@fields){
    print "$_\n";
}
#abc
#sdvf
#df
#
#sdfe

my @fields = split /\s+/, " this   is .   a blank .\n";
foreach $_(@fields){
    print "$_\n";
}
#
#this
#is
#.
#a
#blank
#.



#join
@_=qw"4 6 8 10 12";
my $x = join ":", @_;  #先用胶水连接起来
print "$x\n";  #4:6:8:10:12
my @values = split ":", $x; 
foreach(@values){
    print "$_\n";
}
#4
#6
#8
#10
#12
my $z = join "-", @values; #再用-连接起来
print "$z\n";  #4-6-8-10-12


$_="hello there, boy.\n";
my ($first, $second, $third) = /(\S+) (\S+), (\S+)/;
print "$second is my $third\n";
#there is my boy.


#将匹配结果放在数组中
my $text = "Fred dropped a 5 ton grantie block on Mr. Slate";
my @words = ($text =~ /([a-z]+)/g);   #()可加可不加，但是更好的显示哪一部分被圈出来
print "results: @words\n";
#results: red dropped a ton grantie block on r late


#将成对匹配结果放在哈希中
my $text = "barney rubble fred flintstone wilma flintstone";
#my %name = ($text =~ /(?=(\w+)\s+(\w+))/g);
my %name = ($text =~ /(\w+)\s+(\w+)/g); #g的全局匹配具有唯一性，如果匹配过一次，下一次就从该词后面开始
my @key = keys %name;
my @value = values %name;

print "this is keys.\n";
foreach(@key){
    print "$_\n";
}

print "this is values.\n";
foreach(@value){
    
    print "$_\n";
}

#barney fred wilma
#rubble flintstone flintstone



#非贪婪词
my $text = '<b>Fred</b> and <b>Barney</b>';
(my $match_count = $text) =~ s|<b>(.*)</b>|\U$1|g;
print "$match_count : $text\n";
#FRED</B> AND <B>BARNEY : <b>Fred</b> and <b>Barney</b>  
#$text变量不变，将内容copy给$match_count，并用$match_count做替换

my $text = '<b>Fred</b> and <b>Barney</b>';
my $match_count = $text =~ s|<b>(.*)</b>|\U$1|g;
print "$match_count : $text\n";
#1 : FRED</B> AND <B>BARNEY
#这里的$match_count就是替换的数目

my $text = '<b>Fred</b> and <b>Barney</b>';
my $match_count = $text =~ s|<b>(.*?)</b>|\U$1|g;
print "$match_count : $text\n";
#2 : FRED and BARNEY



#单词边界符号
my $string = "This donesn't capitalize correctly.";
$string =~ s/\b(\w)/\U$1/g;
print "$string\n";
#This Donesn'T Capitalize Correctly.

my $string = "This donesn't capitalize correctly.";
$string =~ s/\s\b(\w)/ \U$1/g;
print "$string\n";
#This Donesn't Capitalize Correctly.

my $string = "This donesn't capitalize correctly.";
$string =~ s/\b{wb}(\w)/\U$1/g;
print "$string\n";
#This Donesn't Capitalize Correctly.


#跨行模式匹配
$_ = "im much better\nthan Barney is\nat bowling,\nwilma.\n";
print "$_";
#im much better
#than Barney is
#at bowling,
#wilma.
if (/^wilma\b/im){
    print "found 'wilma' at start of line.\n";
}
#found 'wilma' at start of line.




use v5.34;

#183-1:
my $what = 'fred|barney';
chomp($_ = <>);
if ($_ =~ m/($what){3}/){
    print "this is $&\n";
}else{
    print "can't found $what.\n";
}


#183-2:

#cat dino
#NAME : Manfred Mann
#NAME : Manfred Mann
#NAME111 : Manfred Mann

#命令行：perl -p -i.bak -w -e 's/fred/Larry/igm' dino 
#执行后dino：
#NAME : ManLarry Mann
#NAME : ManLarry Mann
#NAME111 : ManLarry Mann
#执行后 dino.bak:
#NAME : Manfred Mann
#NAME : Manfred Mann
#NAME111 : Manfred Mann

my $in = $ARGV[0];  #argv []是argc个参数，其中第0个参数是程序的全名
if (!defined $in){
    die "usage: $0 filename";
}

my $out_fh;
my $in_fh;
my $out = $in; #将名称再给out
 $out =~ s/(\.\w+)?$/.out/; #把名称改为.out
if (! open $in_fh, '<', $in){  #打开句柄，读入文件内容
    die "can't open '$in': $!";
}

if (! open $out_fh, '>', $out){  #打开句柄，写入文件内容
    die "can't write '$out': $!";
}

while (<$in_fh>){
    s/FRED/larry/ig;
    print $out_fh $_;
}

#183-3：
#cat file
#name: Fred
#name2:WILMA
#name3:WILMA FRED

#perl -p -i -w -e 's/fred/\#/ig' file && perl -p -i -w -e 's/wilma/Fred/ig' file && perl -p -i -w -e 's/\#/wilma/ig' file 
#成功

#183-4:   perl ./fix_my_copywrite *.pl

