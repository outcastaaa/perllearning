#!/user/bin/perl

use v5.34;
#key-value 切片
my @scores = qw{205 99 33};
my @players = qw{aaa bbb ccc};
my %score;
@score{@players} = @scores;

my @values = @score{@players};
print "@values\n";

my %newhash;
@newhash{@players} = @values;

foreach(keys %newhash){
    print "$_' s score is $newhash{$_}.\n";
}


#try显示错误
my $barney = 
try {my $fred / my $dino}
catch {
    say "error was $_";
}
finally {
    say @_ ? 'yhere is an error':'everything wordked';
};
#Illegal division by zero at answer16.pl line 23.



#map
my @data = (4.75, 1.5, 2, 1234, 6.76546,29.95);

print "the money nums are:\n",
map {sprintf ("%25s\n",big_money($_))}@data;
