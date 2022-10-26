#!/user/bin/perl
while ($n <10){
    print " ",($n += 2),"\n";
}

#hash自增或自减
my @people = qw{fred barney fred wilma dino fred barney pelldle};
my %count;
foreach $_ (@people){
    $count{$_}++;
}

print %count,"\n";

my $m = 5;
my $n = ++$m;
print $n,$m,"\n";
#66
my $z = --$m;
print $z,$m,"\n";
#55

my $m = 5;
my $n = $m++;
print $n,$m,"\n";
#56
my $z = $m--;
print $z,$m,"\n";
#65

my @people = qw{fred barney bamm-bamm wilma dino barney betty betty pebbles};
my %seen;
foreach (@people){
    if ($seen{$_}++){
    print "i've seen you somewhere, $_.\n" ;
    }
}

#for语句
for ($i = 10; $i >= 1; $i--){
    print " i can count to $i.\n";
}
for ($i = 10; $i >= 1; $i= $i-1){
    print " i can count to $i.\n";
}

for ($_ = "bedrock";s/(.)//;){
    print "one character is: $&.\n";
    print "others are: $'\n";
}

#next用法

$str = qw{aaa bbb aaa fred 5 777 fred fred barry wilma};
my @words = split //, $str;
print "@words\n";

while(<>){
foreach (split){
    $total++;
    next if /\W/;
    $valid++;
    $cout{$_}++;
}
}
print "total things = $total,valid words = $valid\n";
foreach $word(sort keys %cout){
    print "$word was seen $cout{$word} times.\n";
}

#aaa  bbb  /  aaa
#total things = 4,valid words = 3
#aaa was seen 2 times.
#bbb was seen 1 times.

#redo
my @words = qw{fred};
my @errors = 0;
foreach (@words){
    #redo会回到这里
    print "type the word '$_':";
    chomp (my $try = <STDIN>);
    if ($try ne $_){
        print "sorry, that's not right.\n";
        $errors++;
        redo;
    }

}
print "you've completed the test.\n";

#last,next,redo
foreach (1 .. 10){
    print "iteration  number $_.\n";
    print "please choose:last, next, redo or none of them.\n";
    chomp (my $choice = <STDIN>);
    print "\n";
    last if $choice =~ m/last/i;
    next if $choice =~ m/next/i;
    redo if $choice =~ m/redo/i;
    print "that wasn;t any of these choices ..onward.\n";
}
print "that's all.\n";


#iteration  number 1.
#please choose:last, next, redo or none of them.
#redo

#iteration  number 1.
#please choose:last, next, redo or none of them.
#next

#iteration  number 2.


#直接回车
#that wasn;t any of these choices ..onward.

#定义或操作符
use v5.34;
my %hhh;
my $aaa =1;
my $lily = $hhh{$aaa} // 2;
print "i can talk to you $lily.\n" if $lily;  #可赋值为2

my $lily = $aaa // 2;
print "i can talk to you $lily.\n" if $lily;  #值为1


foreach my $try (0, undef, '0', 1, 25){
    print "trying [$try] ---> ";
    my $value = $try // "default";
    say "\tgot [$value]";
}

#trying [0] --->         got [0]
#trying [] --->  got [default]
#trying [0] --->         got [0]
#trying [1] --->         got [1]
#trying [25] --->        got [25]


#204-1:
print "please enter one number from 1 to 100.\n";
while (1){
chomp(my $guess = <STDIN>);
my $num = int (1 + rand 100);
if ($guess eq $num){
    print "correct!\n";
    last;
} elsif ($guess > $num){
    print "too high.this num is $num.\n"
} elsif($guess =~/quit|exit|\A\s*\z/i){
    print"GV.the num is $num.\n";
    last;
} else{
   print "too low.this num is $num.\n";
}
}

if ($ENV{DEBUG}){
    print "$ENV{DEBUG}\n";
}else{
    print"its not exist.\n";
}

#204-3:
use v5.34;
my %aaa = {
    'aaa' => 5,
    'bbb' => 6,
    'ddd' => 22,
    'aa' => 33,
    'sss' => undef,
}
my %aaa;
my $key;
foreach  my $key(sort keys my %aaa){
    printf "%8s\n %15s\n", $key, $aaa{$key} // "undefined";
}

