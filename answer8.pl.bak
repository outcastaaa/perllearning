#!/user/bin/perl

#/i和字母大小写无关
while (<>){
    if (/yes/i){
        print;
    }
}

#修饰符 /i /x /s
print "第二个";
while (<>){
  if (m/barney.*fred/six){
    print;
  } 
}

#本地字符问题154
print "第三个";

my $OE = chr( 0xBC );
$_ = <STDIN>;
if (/$OE/li){
    print "found $OE\n";
}else{
    print "not found\n";
}

#行末锚位,找出行末的fred字符串（包括在字符串最后）
$_='this is  dfffbf fred
vfdvfbxbdf
barney dino dfgrfv';
if (/fred$/m){
    print"matched1.\n";
}
if (/^barney/m){
    print"matched2.\n";
}

#捕获变量
$_ = "hello there, neighbor";
if (/\s([a-zA-Z]+),/){
    print "the words were '$1'\n";
}
#the words were 'there'

$_ = "hello there, neighbor";
if (/(\S+) (\S+), (\S+)/){
    print "the words were $1 $2 $3\n";
}
#the words were hello there neighbor

#162 命名捕获
use v5.34;
my $names ='fred flintstone and wilma flintstone';
if ( $names =~ m/(?<last_name>\w+) and \w+ \g{last_name}/){
    print "i saw $+{last_name}.\n";
}

#自动捕获变量
use v5.34;
$_ = "hello there, neighbor";
if ($_ =~ /\s(\w+),/p){
    print "that actually matched '${^MATCH}'.\n";
    print "that was (${^PREMATCH})(${^MATCH})(${^POSTMATCH}).\n";
}

#模拟测试程序
while (<>){
    chomp;
    if (/YOUR_PATTERN_GOES_HERE/){
        print "matched: |$`<$&>$'|\n";
    }else{
        print "no match: |$_|\n";
    }
}
#aaaaaa djd YOUR_PATTERN_GOES_HERE dsff
#matched: |aaaaaa djd <YOUR_PATTERN_GOES_HERE> dsff|

#166-1:
print "166-1\n";
while (<>){
    chomp;
    if (/match/){
        print "matched: |$`<$&>$'|\n";
    }else{
        print "no match: |$_|\n";
    }
}
#beforematchafter
#matched: |before<match>after|

#166-2:
print "166-2\n";
while (<>){
    chomp;
    if (/a\b/){
        print "matched: |$`<$&>$'|\n";
    }else{
        print "no match: |$_|\n";
    }
}
#wilma 
#matched: |wilm<a>|
#barney
#no match: |barney|
#mrs. wilma filntstone
#matched: |mrs. wilm<a> filntstone|
#wilma&fred
#matched: |wilm<a>&fred|

#166-3
print "166-3\n";
while (<>){
    chomp;
    if (/(\b\w+a\b)/){
        print "matched: |$`<$&>$'|\n";
        print "\$1 contains '$1'.\n";
    }else{
        print "no match: |$_|\n";
    }
}
#wilma 
#matched: |<wilma>|
#$1 contains 'wilma'.

#166-4
print "166-4\n";
while (<>){
    chomp;
    if (/(?<name1>\b\w+a\b)/){
        print "matched: |$`<$&>$'|\n";
        print "'word' contains '$+{name1}'.\n";
    }else{
        print "no match: |$_|\n";
    }
}
#wilma 
#matched: |<wilma>|
#'word' contains 'wilma'.

#166-5
print "166-5\n";
while (<>){
    chomp;
    if (/(?<name1>\b\w+a\b)(?<name2>(.){1,5})/s){
        print "matched: |$`<$&>$'|\n";
        print "'word' contains '$+{name1}' and '$+{name2}'.\n";
    }else{
        print "no match: |$_|\n";
    }
}
#i saw wilma yesterday
#matched: |i saw <wilma yest>erday|
#'word' contains 'wilma' and ' yest'.

#i, wilma!
#matched: |i, <wilma!>|
#'word' contains 'wilma' and '!'.

#wilma
#no match: |wilma|

#166-6
print "166-6\n";
while (<>){
    chomp;
    if (/\s\z/){
        print "$_.\n";
    }else{
        print "no match: |$_|\n";
    }
}
#dfrgv   grfg   ..f
#dfrgv   grfg   ..f    .