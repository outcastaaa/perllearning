#从命令行取得文件名，汇报文件是否可读可写可执行及是否存在；
#一次询问文件夹下所有文件
foreach my $file (@ARGV){
    if(-r $file){
        print "this file $file is readable.\n";
    }
    if(-w $file){
        print "this file $file is writable.\n";
    }
    if(-x $file){
        print "this file $file is exclusive.\n";
    }
    if(-e $file){
        print "$file exists.\n";
    }
}
#  perl answer231-1.pl *

# 参考方法
print "new....\n";
foreach my $file (@ARGV){
    my $attribs = &attributes($file);
    print "$file $attribs.\n";
}


sub attributes{
    my $file  = shift @_;
    return "not exist" unless -e $file;

    my @arrtib;
    push @arrtib, "readable" if -r $file;
    push @arrtib, "writable" if -w $file;
    push @arrtib, "executable" if -x $file;return "exists" unless @arrtib;
    'is'. join "and ", @attrib;
}

