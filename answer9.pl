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


#join
@_=qw"4 6 8 10 12";
my $x = join ":", @_;
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

$_="hello there, boy.\n";
my ($first, $second, $third) = /(\S+) (\S+), (\S+)/;
print "$second is my $third\n";
#there is my boy.


#将匹配结果放在数组中
my $text = "fred dropped a 5 ton grantie block on Mr. Slate";
my @words = ($text =~ /([a-z]+)/ig);   #()可加可不加，但是更好的显示哪一部分被圈出来
print "results: @words\n";
#results: fred dropped a ton grantie block on Mr Slate

#将成对匹配结果放在哈希中
my $text = "barney rubble fred flintstone wilma flintstone";
#my %name = ($text =~ /(?=(\w+)\s+(\w+))/g);、
my %name = ($text =~ /(\w+)\s+(\w+)/g);
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
my $match_count = $text =~ s|<b>(.*?)</b>|\U$1|g;
print "$match_count : $text\n";
#2 : FRED and BARNEY


#跨行模式匹配

$_ = "im much better\nthan Barney is\nat bowling,\nwilma.\n";
if (/^wilma\b/im){
    print "found 'wilma' at start of line\n";
}


