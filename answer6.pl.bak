#!/user/bin/perl

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

my $count = keys %hash;
print "$count\n";
#3


if (%hash){
    print "it was a true value.\n";
}


#each函数
while (($key, $value) = each %hash ){
    print "$key => $value\n";
}
#b => 2
#a => 1
#c => 3


#对键排序：
my $value;
foreach $key (sort keys %hash){
    $value = $hash{$key};
    print "$key => $value\n";
}

#借书程序
my %books = ('fred' => 3, 'wilma' => 1, 'barney' => 0, );
$books{'fred'} = 3;
$books{'wilma'} = 1;
if ($book{$someone}){
    print "$someone has at least one book checked out.\n";
}

#exists函数:检查有没有该键
if (exists $books{'dino'}){
    print "hey there is a library card for dino.\n";
}else{
    print "there is no dino's card.\n";
}



#delete函数
my %books = ('fred' => 3, 'wilma' => 1, 'barney' => 0, );
my $num = keys %books;
print "number of keys is $num.\n";

my $person = 'barney';
delete $books{$person};
my $num = keys %books;
print "number of keys is $num.\n";


#hash内插：每位借阅者借阅了几本书
my %books = ('fred' => 3, 'wilma' => 1, 'barney' => 0, );
my $person;
foreach $person(sort keys %books){
    if ($books{$person}){
        print "$person has $books{$person} items.\n";
    }
}

#%ENV
print "PATH is $ENV{PATH}.\n";
#PATH is /home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:/home/xuruizhi/.local/bin:/home/xuruizhi/bin:/home/xuruizhi/share/mysql/bin:/home/xuruizhi/.cargo/bin:/home/linuxbrew/.linuxbrew/opt/python@3.9/bin:/home/linuxbrew/.linuxbrew/opt/python@3.9/libexec/bin:/home/linuxbrew/.linuxbrew/Cellar/perl/5.34.0/bin:/home/xuruizhi/bin:/home/xuruizhi/.local/bin:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/wsl/lib:/mnt/c/WINDOWS/system32:/mnt/c/WINDOWS:/mnt/c/WINDOWS/System32/Wbem:/mnt/c/WINDOWS/System32/WindowsPowerShell/v1.0/:/mnt/c/WINDOWS/System32/OpenSSH/:/mnt/c/Program Files/Git/cmd:/mnt/d/MEGA11:/mnt/c/Program Files/PowerShell/7/:/mnt/d/c/bin:/mnt/d/perl/site/bin:/mnt/d/perl/bin:/mnt/c/Users/XRZ/scoop/shims:/mnt/c/Users/XRZ/AppData/Local/Microsoft/WindowsApps:/mnt/d/Microsoft VS Code/bin:/mnt/c/Users/XRZ/AppData/Local/GitHubDesktop/bin:/snap/bin.

#127-1:
my %names = ('fred' => 'flintstone', 'barney' => 'rubble', 'wilma' => 'flintstone',);
my $person;
foreach $person(keys %names){
    print "$person\'s family name is $names{$person}.\n";
}

my %names = ('fred' => 'flintstone', 'barney' => 'rubble', 'wilma' => 'flintstone',);
#只能输入一个人；
#chomp(my $person = <STDIN>);
print "please enter some names.\n";
chomp(my @persons= <STDIN>);
foreach my $person(@persons){
   print "$person\'s family name is $names{$person}.\n";
}


#127-2:
print "please enter some words.\n";
chomp(my @words = <STDIN>);
my $word;
my %count;

foreach $word(@words){
    $count{$word} = $count{$word} +1;
}

#检查下hash表
my ($key, $value);
foreach $key (keys %count){
    $value = $count{$key};
    print "$key => $value\n";
}

foreach $word(sort keys %count){
   print "$word had appeared $count{$word}.\n";
}

#127-3;
my $key;
foreach  $key(sort keys %ENV){
    printf "%10s\n %30s\n", $key, $ENV{$key};
}

#或者先确定最长长度
my $longest;
foreach my $key(keys %ENV){
    my $key_length = length($key);
    if ($key_length > $longest){
       $longest = $key_length; 
    }
    $longest;
}
foreach my $key (sort keys %ENV){
    printf " %${longset}s,   %s\n", $key, $ENV{$key};
}
