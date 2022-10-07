#第四章

#!user/bin/perl


use warnings;

 
sub sum{
    print "you called the sum!\n";
     $fred + $barney;
}

$fred = 3;
$barney =4;
$a = &sum;
$b = &sum * 5;
print "sum is $a.\n";
print "sum * 5 is $b.\n";

#最后执行的表达式不是返回值
$fred = 3;
$barney =4;
use warnings;
sub sum1{
    print "you called the sum!\n";
    $fred + $barney;
    print "im returning a value.\n";
}

&sum1;

#比较两个已知的参数的大小
sub large{
    if ($fred gt $barney){
        print "$fred is larger.\n";
    }else{
        print "$barney is larger!\n";
    }
}
&large;

# 设定包含两个参数的子程序调用
$n = &max(10, 15);  #相当于构造了一个包含两个参数的@_数组
sub max{
    if ($_[0] > $_[1]){
        print "$_[0] is larger.\n";
    }else{
        $_[1];
    }
}


# 设置子程序参数超过固定个数就报错
my $n1 = &maxer(10, 12, 15); 
sub maxer{
    if (@_ !=2){
        print "warning!\n";
    }
}

#使max可以接受任意数目的参数
my $maximum = &max(3, 5, 10, 8, 4, 6);

sub max{
    my $max_so_far = shift @_; #将数组最左边的值放入$max_so_far 
    foreach $_(@_){
        if ($_ > $max_so_far){
            $max_so_far = $_;
        }
    }
   print "$max_so_far\n"; # $max_so_far必须在sub{}内部，否则无法识别该变量
}


# return
my @names = qw{ fred barney betty dino wilma pebbles bamm_bamm};
my $result = &which_is("dino",@names);
sub which_is{
    my ($what, @array) = @_;
    foreach $_(0..$#array){
        if ($what eq $array[$_]){
            return $_;
        }
    }
    return -1;
}

#return返回列表
my ($c , $d);

sub return_result{
    if ( $c < $d){
        $c .. $d; 
    }else{
        reverse $d .. $c;
    }
}
$c = 6;
$d = 12;
@e = &return_result;
print "@e\n";

use v5.34;
sub marine{
    state $n = 0;
    $n += 1;
    print "this is $n.\n";
}
&marine;
&marine;
&marine;
