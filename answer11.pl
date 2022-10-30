#!/user/bin/perl

#perl -Mlocal::lib
#PATH="/home/xuruizhi/perl5/bin${PATH:+:${PATH}}"; export PATH;
#PERL5LIB="/home/xuruizhi/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/home/xuruizhi/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/home/xuruizhi/perl5\""; export PERL_MB_OPT;   #从module::build下载的模式包存储的地方
#PERL_MM_OPT="INSTALL_BASE=/home/xuruizhi/perl5"; export PERL_MM_OPT;    #从makemaker下载的模式包存储的地方


#将修改的路径写入文件，没有成功
#cpan[1]> o conf makepl_arg INSTALL_BASE=/D/perlmodule
#    makepl_arg         [INSTALL_BASE=/D/perlmodule]
#Please use 'o conf commit' to make the config permanent!
#cpan[2]> o conf commit
#commit: wrote '/home/xuruizhi/.local/share/.cpan/CPAN/MyConfig.pm'


#basename 使用
use File::Basename;
my $name = "/home/xuruizhi/perl5";
my $basename = basename $name;
print "$basename\n";
#perl5
my $dir = dirname $name;
print "$dir\n";
#/home/xuruizhi



#替换文件名称
print "替换文件名称\n";
use File::Spec;
my $old_name = "/home/xuruizhi/perl5";
my $basename = basename $old_name;
my $dirname = dirname $old_name;

my $dirname =~ s/^/not/;

my $newname = File::Spec-> catfile($dirname,$basename);
rename($old_name,$newname) or warn "cant't rename.\n";
print "$newname,$old_name,$newname\n";

# Time::Moment模块
#my $dt =  Time::Moment->from_epoch( time );
#print "$dt\n";


#216-1: Module::CoreList
use v5.34;
use Module::CoreList;

my %module = %{ $Module::CoreList::version{5.034}}; #哈希引用
#foreach my $key(sort keys %module){
#    my $value = $module{$key};
 #   print "$value.\n";
#}
print join"\n", sort keys %module;


print "\n";
use Time::Moment;
my $dt = Time::Moment->from_epoch( time );
printf '%4d%02d%02d',$dt->year, $dt->month, $dt->day_of_month,"\n";
print "\n";

#计算两时间差值

my $dt1 = Time::Moment->new(
    year => 1987,
    month =>12,
    day =>18,
);
my $dt2 = Time::Moment->now;
my $years = $dt1->delta_years($dt2);
my $months = $dt1->delta_months($dt2) % 12;

printf "%d years and %d months\n", $years, $months;


#键入年月日
#216-2在duration文件
