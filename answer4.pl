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


#做数组每个参数连续加法
use v5.34;
running_sum(5,6);
running_sum(1..4);
running_sum(4);

sub running_sum{
    state $sum = 0;
    state @numbers;

    foreach my $number(@_){
        push @numbers,$number;
        $sum += $number;
    }
    say "the sum of (@numbers) is $sum";
}






use v5.34;

running_sum(5,6);
running_sum(1..4);
running_sum(4);

sub running_sum{
    state $sum = 0;
    my @numbers;
    foreach my $number(@_){
        push @numbers,$number;
        $sum += $number;
    }
    say "the sum of (@numbers) is $sum.";
}

state @array = qw {a b c};





use v5.34;
use feature qw{signatures};
no warnings qw {experimental::signatures};


sub min($m, $n){
    if ($m > $n){print "$n\n"  }else {print  "$m\n"}
}
&min(5,12);






 sub maxa($max_so_fara, @ ){
    foreach (@_){
        if ($_ > $max_so_fara){
            $max_so_fara = $_;
        }
    }
    print $max_so_fara."\n";
 }

&maxa(4,5,337,10);


#88-1:

sub total{
    state $sum =0;
    foreach (@_){
        $sum += $_;
}
  $sum;
}

my @fred = qw{1 3 5 7 9 };
my $fred_total = &total(@fred);
print "the total of \@fred is $fred_total.\n";


print "enter some numbers on seperate lines\n";
#my $user_total = total (<STDIN>);
#print "the total of those numbers is $user_total.\n";


#88-2:

sub sum_total {
    my $sum = 0;
    foreach (@_){
        $sum += $_;
    }
    $sum;
}

my @num = 1 .. 100;
my $num_total = &sum_total(@num);

print "the sum from 1 to 100 is $num_total.\n";



#88-3:
sub average{
    my $average = 0;
    my $sum = 0;
    my $list;
    foreach (@_){
        $sum += $_;  
    }
    #$list = $#_;!别忘了从0开始；
    $list = $#_ +1;  # 或者 my $count = @_;直接将数组当标量，计算列表数目；
    $average = $sum / $list;
}

my $fff = average(1 .. 10);
print "$fff\n";


sub above_average{
    my @larger_than_ave;
    my $average = average(@_);
    foreach (@_){
        if ($_ > $average){
            push (@larger_than_ave, $_);
            }
    }
    @larger_than_ave;
}

 @fred = above_average(1 .. 10);
print "\@fred is @fred.\n";
print "(should be 6 7 8 9 10)\n";

my @barney = above_average(100, 1 ..10);
print "\@barney is @barney.\n";
print "(should be 100)\n";

#my @f = above_average();
#print "\@f is @f.\n";
#Illegal division by zero at answer3.pl line 233.

#88-4:
sub greet{
    state $last_name;
    my $name = shift; #调取最头上的参数，即第一个名字；

    print "hi $name!";

    if (defined $last_name){   #判断last_name 中是否有值；
        print "$last_name is also here.\n";
    }else{
        print "you are the first one here.\n";
    }

    $last_name = $name;
}

greet("fred");
greet("barney");
greet("coconut");


#88-5：
use v5.34;

gret("fred");
gret("barney");
gret("coconut");

sub gret{
    state @names; #保留所有名字列表；
    my $name = shift; #调取最头上的参数，即第一个名字；
   

    print "hi $name!";

    if (@names){   #判断是否有值；如果变量没有被赋值，返回为假；
        print "I've seen: @names\n";
    }else{
        print "you are the first one here.\n";
    }
    push (@names, $name);
}

