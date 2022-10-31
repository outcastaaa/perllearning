#!/user/bin/perl

use v5.34;

#用index查找,从前往后
my $stuff = "howdy world!";
my @where = ();
my $where = -1;
while (1){
    $where = index ($stuff ,'w', $where+1);
    last if $where == -1; #若没有找到就结束循环
    push @where, $where;
}
say "positions are @where";
# positions are 2 6

my $fred = "yabba dabba doo.";
my $where = rindex ($fred, "abba", 3);
print "positions are $where.\n";
#positions are 1.

#用index查找,从后往前
use v5.34;
my $stuff = "yabba dabba doo.";
my @where = ();
my $where = length $stuff;
while (1){
    $where = rindex ($stuff ,'abba', $where - 1);
    last if $where == -1; #若没有找到就结束循环
    push @where, $where;
}
say "positions are @where.";
# positions are 7 1.


my $long = "some very very long string.";
my $right = substr ($long, index ($long, "l"));
print "$right\n";

my $string = "hello, world.";
my $previous_value = substr ($string, 0, 5, "goodbye");
print "$previous_value\n";
#hello 返回被替换的字符串


my $num = printf "%.1f",2.49997;
print "$num\n";
#2.51

my $num = sprintf "%.2f",2.49997;
print "$num\n";
#2.50


#排序子程序

#按照数字大小排列
sub by_number{
    if ($a < $b){-1}elsif($a > $b){1}else{0};
}
my @somenum = qw{12 344 66 22 5 77 5};
my @result = sort by_number @somenum;
print "@result\n";
#5 5 12 22 66 77 344

#使用飞碟操作符
sub by_number{
    $a <=> $b;
}
my @somenum = qw{12 3 44 66 22 5 77 5};
my @result = sort by_number @somenum;
print "@result\n";
#3 5 5 12 22 44 66 77


#不区分大小写排列字符串
sub by_str {
    "\L$a" cmp "\L$b";
}
my @somestr = qw {aaa BBB d ffGF wfef};
my @result = sort by_str @somestr;
print "@result\n";
#aaa BBB d ffGF wfef


#内嵌子程序，倒序排序
my @somenum = qw{12 3 44 66 22 5 77 5};
my @descending = reverse sort {$a <=> $b} @somenum;
print "@descending\n";
#77 66 44 22 12 5 5 3

#另一种倒叙写法 替换a和b位置
my @somenum = qw{12 3 44 66 22 5 77 5};
my @descending = sort {$b <=> $a} @somenum;
print "@descending\n";
#77 66 44 22 12 5 5 3



#hash排序
#按照积分降序排列
use v5.34;
my  %score;
my %score = (
    "barney" => 195,
    "fred" => 205,
    "dino" => 30,
    
);

sub by_score { $score{$b} <=>  $score{$a} };
my @result = sort by_score keys %score;
print "@result \n";
#fred barney dino

#有重复的分值，将人名按照ASCii码排序
use v5.34;
my  %score;
my %score = (
    "barney" => 195,
    "fred" => 205,
    "dino" => 30,
    "bamm" => 195,
);
sub by_scoreandname { 
    $score{$b} <=>  $score{$a} 
    or 
    $a cmp $b
};

my @result = sort by_scoreandname keys %score;
print "@result \n";
#fred bamm barney dino




