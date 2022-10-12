
#!/usr/bin/perl

#序列匹配
$_ = "yabba dabba doo";
if (/abba/){
    print "it matched1.\n";
}
#it matched1.
#空格也参与匹配
$_ = "yabba dabba doo";
if (/ba da/){
    print "it matched2.\n";
}
#it matched2.

#$pattern = "(";
#if ($pattern/){
#    print "it matched.\n";
#}
#syntax error at answer7.pl line 14, near "/)"


#因为远程无法输入CTRL+d 所以先注释
#while (<STDIN>){
 #  chomp;
 # if (/fred/){
  #     print "\tit matches.\n";
 #  }else{
  #     print "\tit doesn't match.\n";
  #}
#}
#% perl try_a_pattern
#输入内容：fred√ Fred fredaaa√ barney alfred√ red×

#从命令行接收参数
#while (<STDIN>){
#    chomp;
 #   if (/$ARGVA[0]/){
 #       print "\tit matches.\n";
  #  }else{
  #      print "\tit doesn't match.\n";
 #   }
#}

#.号
$_ = "yabba dabba doo";
if (/ab.a/){
    print "it mathched3.\n";
}
$_ = "yabba dabba doo!";
if (/doo./){
    print "it mathched4.\n";
}

$_ = "yabba dabba doo\n";
if (/doo./){
    print "it mathched4.\n"; #。无法匹配换行符
}else{
    print "connot.\n";
}

$_ = "yabba dabba doo.";
if (/doo\./){   #先用\进行转义；
    print "it mathched5.\n";
}

#反斜线\
$_='a real \\ black';
if (/\\/){    #匹配反斜线\自身
    print "it mathched6.\n";
}

#\N和.的作用一样
$_ = 'yabba dabba doo!';
if (/doo\N/){  #可以匹配除了换行符之外任意字符
    print "it mathched7.\n";
}

#连字符
$_ = 'bamm-bamm';
if (/bamm-?bamm/){
    print "it matched8.\n";
}

#建立一个文件（不含有后缀）,并且将上面内容写入该文件
#open LOG,'>>try_a_pattern'
#在linux中输入：
# perl try_a_pattern "bamm-?bamm"

#*号
$_ = 'bamm----bamm';
if (/bamm-*bamm/){
    print "it matched9.\n";
}


#分组g{1}
$_ = 'xaa11bb';
if (/(.)(.)\g{-1}11/){
    print "it matched10.\n";
}

#择一匹配
$_ = 'xaa11bb';
if (/xaa|bb/){
    print "$_ matched.\n";
}

#148-1:
#会进入无限循环
#$_ = <STDIN>;
#while ($_){
 #   if (/fred/){
 #      print "$_\n"; 
 #       print;
 #   }
#}

while (<>){
    if (/fred/){
        print;
    }
}

#148-2:
print "#148-2";
while (<>){
    if (/[Ff]red/){  #或者(F|f)red
        print;
    }
}

#148-3:
print "#148-3";
while (<>){
    if (/\./){  
        print;
    }
}

#148-4:
print "#148-4";
while (<>){
    if (/\A[A-Z][a-z]+/){  
        print;
    }
}

#148-5:
print "#148-5";
while (<>){
    if (/(\S)\g{1}/){  
        print;
    }
}

#148-6:
print "#148-6";
while (<>){
    if (/[a-z]+/){  
        print;
    }
}