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
    $count{$_}++;
}
}
print "total things = $total,valid words = $valid\n";
foreach $word(sort key %count){
    print "$word was seen $count{$word} times.\n";
}