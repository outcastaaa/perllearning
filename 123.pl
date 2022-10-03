#!user/bin/perl

 print 'don\'t do it!\n';

print '\'\\';

print "don\'t do it!\n";
# don't do it!\n'\don't do it!

print "\x{2668}";
# Wide character in print at 123.pl line 8.♨

print "Z".5 * 7;
print "Z" . "5 *  7";
# Z35Z5 *  7

use v5.34;
say "the answer is ",5*7,".";
# the answer is 35.

my $food = "an apple";
say my $sentence = "He ate $food";
say my $sentense1 = 'He ate $food';
say $food;
say 'he ate $food';
# He ate an apple
# He ate $food
# an apple加不加双引号都一样

my $fred = 'hello';
say "the name is \$fred.\n";

my $what = "steak";
my $n =3;
say "fred ate $n my $what s.\n";
say "fred ate $n ${what}s.\n ";
#Global symbol "$whats" requires explicit package name (did you forget to declare "my $whats"?) at 123.pl line 35.
#将$whats识别为新变量，所以报错

my $alpha = chr(hex('03B1'));  # 先转化为字符串；再转换为十进制数字；再转为字符
my $alpha1 = chr(0x03B1);
say "this is $alpha.\n";
say "this is $alpha1.\n";
say "this is \x{03B1}.\n";
# 都是  this is α.

my $line = <STDIN>;
if ($line eq "\n"){
    say "that is just a blank line!\n";  
}else{
    say "that line of input was: $line";
}
  
# xrz
# that line of input was: xrz