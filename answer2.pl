#!user/bin/perl
use warnings;
@rocks = qw {1 2 3 };
print "4 @rocks 5\n";

foreach $rock (qw{ 1 2 3 }){
    print "one rock is $rock.\n";
}

#one rock is 1.
#one rock is 2.
#one rock is 3.

# foreach @rocks {
#    print "one rock is @rocks.\n";
#}

@rocks = qw{ ssdf fbb efwgh};
foreach $rock(@rocks){
    $rock = "\t$rock";
    $rock .= "\n";
}
print "the rocks are:\n",@rocks;

@rocks = qw{ ssdf fbb efwgh};
while (($index,$value)= each @rocks){
    print "$index :  $value\n";
}

#0 :  ssdf
#1 :  fbb
#2 :  efwgh

# print each @rocks; 0ssdf
# print "each @rocks"; each ssdf fbb efwgh

@rock = qw{1 2 3 4 5 };
print "how many rocks do you have?\n";
print "I have ", @rock, "rocks!\n";
print "I have ", scalar @rock, " rocks!\n";
print "I have  $#rock rocks!\n";

$fred = 3;
$barney =4;
use warnings;
sub sum{
    print "you called the sum!\n";
    $fred + $barney;
    print "im returning a value.\n";
}

&sum;

# 70-1:
use warnings;
@lines = <STDIN>;
@rlines = reverse @lines;
print @rlines;
# 结果：将输入的字符串顺序倒换；

# or

# print reverse <STDIN>;

# 70-2：
@name = qw {fred betty barney dine wilma pebbles bamm};

#foreach $a(@name){
#    print "please enter some number\n";
#    $b = <STDIN>;
#    print ($b,$a);
#}
chomp (@number = <STDIN>);
foreach (@number)
