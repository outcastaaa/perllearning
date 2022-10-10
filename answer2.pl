# 习题答案:

# 52-1: 计算⚪的周长

#！user/bin/perl
my $r = '12.5';
my $pi = 3.141592654;
my $c = 2*$r*$pi;
print "$c\n";

# 78.53981635

# 52-2: 用户输入半径并计算⚪的周长
 use warnings;
 use utf8;
 chomp(my $r1 = <STDIN>);
 my $Π = 3.141592654;
 my $c1 = 2*$r1*$Π;
 print "the circumference of a circle of radius $r1 is $c1.\n";  

# 52-3:
use warnings;
my $r2 = <STDIN>;
if ($r2 lt 0){
    print "please enter a num larger than 0.\n";
}else{
    my $c2 = 2*$r2*3.141592654;
    print "$c2\n";
}

# 52-4:
print "please enter a num\n";
chomp(my $n1 = <STDIN>);
print "please enter another num\n";
chomp(my $n2 = <STDIN>);
my $n3 = $n1 * $n2;
print "the answer is $n3\n";

# 52-5:
print "please enter a num\n";
my $n = <STDIN>;
print "please enter a string\n";
my $cs= <STDIN>;
my $a = $s x $n;
print "$a\n";