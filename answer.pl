# 习题答案:

# 52-1: 计算⚪的周长

#！user/bin/perl
my $r = '12.5';
my $c = 2*$r*3.141592654;
print "$c\n";

# 78.53981635

# 52-2: 用户输入半径并计算⚪的周长
# my $r1 = <STDIN>;
# my $c1 = 2*$r1*3.141592654;
# print "$c1\n";  

# 52-3:
my $r2 = <STDIN>;
if ($r2 lt 0){
    print "please enter a num larger than 0\n";
}else{
    my $c2 = 2*$r2*3.141592654;
    print "$c2\n";
}

# 52-4:
print "please enter a num\n";
my $n1 = <STDIN>;
print "please enter another num\n";
my $n2 = <STDIN>;
my $n3 = $n1 * $n2;
print "the answer is $n3\n";

# 52-5:
print "please enter a num\n";
my $n = <STDIN>;
print "please enter a chr\n";
my $c = <STDIN>;
my $a = $c x $n;
print "$a\n";