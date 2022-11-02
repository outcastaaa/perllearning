#!/user/bin/perl

use v5.34;
system 'date'; #Tue Nov  1 09:44:56 CST 2022

# 反引号捕获输出
my $now = 'date';
print "the time is now $now\n";
# the time is now date

my $now = `date`;
print "the time is now $now hbhfn\n";
# the time is now Tue Nov  1 14:38:40 CST 2022
#  hbhfn  perl中输出带有换行符

chomp (my $now = `date`);
print "the time is now $now hbhfn\n";


#列表上下文的反引号
# my $who_text = `who`;
# my @who_lines = split /\n/, $who_text;
# foreach (@who_lines){
#     print "$_\n";
# }

my @who_lines = `who`;
print "@who_lines";




#  kill -l
#  1) SIGHUP       2) SIGINT       3) SIGQUIT      4) SIGILL       5) SIGTRAP
#  6) SIGABRT      7) SIGBUS       8) SIGFPE       9) SIGKILL     10) SIGUSR1
# 11) SIGSEGV     12) SIGUSR2     13) SIGPIPE     14) SIGALRM     15) SIGTERM
# 16) SIGSTKFLT   17) SIGCHLD     18) SIGCONT     19) SIGSTOP     20) SIGTSTP
# 21) SIGTTIN     22) SIGTTOU     23) SIGURG      24) SIGXCPU     25) SIGXFSZ
# 26) SIGVTALRM   27) SIGPROF     28) SIGWINCH    29) SIGIO       30) SIGPWR
# 31) SIGSYS      34) SIGRTMIN    35) SIGRTMIN+1  36) SIGRTMIN+2  37) SIGRTMIN+3
# 38) SIGRTMIN+4  39) SIGRTMIN+5  40) SIGRTMIN+6  41) SIGRTMIN+7  42) SIGRTMIN+8
# 43) SIGRTMIN+9  44) SIGRTMIN+10 45) SIGRTMIN+11 46) SIGRTMIN+12 47) SIGRTMIN+13
# 48) SIGRTMIN+14 49) SIGRTMIN+15 50) SIGRTMAX-14 51) SIGRTMAX-13 52) SIGRTMAX-12
# 53) SIGRTMAX-11 54) SIGRTMAX-10 55) SIGRTMAX-9  56) SIGRTMAX-8  57) SIGRTMAX-7
# 58) SIGRTMAX-6  59) SIGRTMAX-5  60) SIGRTMAX-4  61) SIGRTMAX-3  62) SIGRTMAX-2
# 63) SIGRTMAX-1  64) SIGRTMAX




#281-1:
my $dir = '/';
system 'ls -l $dir';
# total 84
# -rwxrwxrwx 1 xuruizhi xuruizhi   48 Oct 12 09:45  1.txt
# -rwxrwxrwx 1 xuruizhi xuruizhi 1230 Oct 24 19:43  123.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi    9 Sep 30 22:43  README.md
# -rwxrwxrwx 1 xuruizhi xuruizhi 3595 Oct 25 17:23  answer10.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi 2295 Oct 29 22:25  answer11.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi 2892 Oct 29 23:55  answer12.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi 1111 Oct 31 11:24  answer13.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi 4100 Nov  1 11:11  answer14.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi 1670 Nov  1  2022  answer15.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi  878 Oct 24 19:43  answer2.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi  918 Oct 29 23:04  answer231-1.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi 1854 Oct 24 19:43  answer3.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi 5371 Oct 24 19:43  answer4.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi 2651 Oct 24 19:43  answer5.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi 4451 Oct 24 19:43  answer6.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi 2815 Oct 24 19:43  answer7.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi 3351 Oct 24 19:43  answer8.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi 5588 Oct 27 14:59  answer9.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi   66 Oct 24 14:42  dino
# -rwxrwxrwx 1 xuruizhi xuruizhi    0 Oct 24 14:42  dino.out
# -rwxrwxrwx 1 xuruizhi xuruizhi  474 Oct 27 20:54  duration.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi   40 Oct 24 16:01  file
# -rwxrwxrwx 1 xuruizhi xuruizhi  423 Oct 24 19:37  fix_my-copy319
# -rwxrwxrwx 1 xuruizhi xuruizhi  123 Oct 24 16:44  fix_my_copywrite
# -rwxrwxrwx 1 xuruizhi xuruizhi  226 Oct 24 19:43  hello.pl
# -rwxrwxrwx 1 xuruizhi xuruizhi 1224 Oct  1 11:34  result.txt
# -rwxrwxrwx 1 xuruizhi xuruizhi  290 Oct 10 20:38  rocks.txt
# -rwxrwxrwx 1 xuruizhi xuruizhi   68 Oct 12 00:09  try_a_pattern
# -rwxrwxrwx 1 xuruizhi xuruizhi  173 Oct 24 19:43 'use warnings;.pl'


#281-2
open STDOUT, '>ls.out';
open STDERR, '>ls.err';
chdir '/' or die "can't change dir:$!";
exec 'ls -l' or die "can't list:$!";
#和上面结果不一样，之后再看


#281-3
use v5.34;
# foreach(`date`){

#     my ($week, $month, $else) = m/(\S+)\s+(\S+)\s+(.*)/;

#     if ($week =~ m/Sat|Sun/){
#         print "its $week,go play!\n";
#     }else{
#         print "its $week,go to work!\n";
#     }
# }

if (`date` =~ /\AS/){
    print "go play\n";
}else{
    print "get to work\n";
}


