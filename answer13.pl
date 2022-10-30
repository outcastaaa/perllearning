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






#批量删除文件，删除以 .bak 结尾的备份文件
my $success = unlink glob '*.bak';
print "i deleted $success files.\n";