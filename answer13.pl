#!/user/bin/perl

use v5.34;
use Cwd;
say "the current working directory is ", getcwd();
#the current working directory is/mnt/d/perl/perl

#在其他目录下运行文件，给出完整路径
#:/mnt/d/perl$ perl /mnt/d/perl/perl/answer13.pl


#文件名通配
foreach my $arg (@ARGV){
    print "one arg is $arg\n";
}
# echo *.pl
#123.pl answer10.pl answer11.pl answer12.pl answer13.pl answer2.pl answer231-1.pl answer3.pl answer4.pl answer5.pl answer6.pl answer7.pl answer8.pl answer9.pl duration.pl hello.pl use warnings;.pl

#目录句柄没有试验成功



#批量删除文件，删除以 .bak 结尾的备份文件
#my $success = unlink glob '*.bak';
#print "i deleted $success files.\n";
#i deleted 14 files.




#软硬连接
#建立一个软链接/mnt/d/perl/perl$ ln -s 1.txt 1.1.txt
my $where = readlink '1.1.txt';
print "1.txt is in $where.\n";
#1.txt is in 1.txt.

my $perl = readlink '/user/bin/perl';
print "perl is in $perl.\n"; 
#perl is in .
#不是链接，是本来的文件所以不会返回什么


unlink '1.1.txt';
#1.1.txt就被删除了

