#!user/bin/perl
##copyright (C) 2022 by xrz
##copyright (C) 2022 by xrz
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



# 70-1:
use warnings;
@lines = <STDIN>;
@rlines = reverse @lines;
print @rlines;
# 结果：将输入的字符串顺序倒换；

# or

# print reverse <STDIN>;

# 70-2：


#foreach $a(@name){
#    print "please enter some number\n";
#    $b = <STDIN>;
#    print ($b,$a);
#}

@name = qw {fred betty barney dine wilma pebbles bamm};
print "please enter some numbers from 1 to 7.\n";
chomp (@number = <STDIN>);
foreach $c(@number){
    print "$name[$c-1]\n";
}

# 输入的数据是形成了number数组，但是通过$c将其一个一个调用
foreach $d(qw/5 2 3/){
    print "$name[$d-1]\n";
}

# 70-3:
#在一行
@names = qw {fred betty wilma barney};
@sorted = sort(@names);
print "@sorted\n";
#换行
foreach $a(@sorted){
    print "$a"."\n";
}


#70-3通过键盘输入实现：
#在一行
chomp(@names = <STDIN>);# 一次性读入所有行，换行符除外；
@sorted = sort @names;
print "@sorted";
#换行
print sort <STDIN>;
