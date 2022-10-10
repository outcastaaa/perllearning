#! user/bin/perl

#$hash{$family_name}

#my $person;
#my 
#my 
#foreach my $person (qw<barney fred>){
    #print "ive heard of $person $family_name{$person}.\n";
#}

$family_name{'barney'} = 'rubble';
$foo = 'bar';
print $family_name{ $foo . 'ney' };


$family_name{'fred'} = 'flinstone';
$bedrock = $family_name{'fred'};
print "$bedrock\n";

#用列表结构哈希表  键，值, 键，值；
%some_hash = ('foo', 35, 'bar', 12.4, 2.5, 'hello','wilma', 1.72e30, 'betty', "bye\n");
@any_array = %some_hash;  #将hash变成列表；
print "@any_array\n";

#反转hash表
my %reverse_hash =reverse %some_hash;
@new_hash = %reverse_hash;
print "@new_hash\n";

#keys & values 函数
my %hash = ('a' => 1, 'b' => 2, 'c' => 3,);
my @k = keys %hash;
my @v = values %hash;
print "@k\n";
print "@v\n";
#a c b 都没有顺序
#1 3 2

my $count = keys $hash;
print "$count\n";

if (%hash){
    print "it was a true value.\n";
}


#