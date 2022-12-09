# Perl命令行应用介绍  


# 第一部分：SafetyNetOptions安全网参数

在使用Perl尝试一些聪明(或stupid)的想法时,错误难免会发生.有经验的Perl程序员常常使用三个参数来提前找到错误所在,
```bash
1：-C
这个参数编译Perl程序但不会真正运行它.由此检查所有语法错误.每次修改perl程序之后我都会立刻使用它来找到任何语法错误.
$perl -c program.pl

2：-W
它会提示你任何潜在的问题.Perl5.6.0之后的版本已经用usewarnings;替换了-w.你应该使用usewarnings因为它要比-w更灵活.

3：-T
它把perl放到了tain模式.在这个模式里,Perl会质疑任何程序外传来的数据.例如,从Perl命令行读取,外部文件里读取或是CGI程序里传来的数据.
这些数据在-T模式里都会被Tainted掉.
```

# 第二部分：Perl命令行Perl参数：可以让短小的Perl程序运行在Perl命令行.
```bash
1：-e
可以让Perl程序在Perl命令行上运行.
例如,我们可以在Perl命令行上运行"HelloWorld"程序而不用把它写入文件再运行.
$perl -e 'print"HelloWorld\n"'

多个-e也可以同时使用,运行顺序根据它出现的位置.
$perl -e 'print"Hello";' -e 'print"World\n"'
象所有的Perl程序一样,只有程序的最后一行不需要以;结尾.

2：-M
可以象通常一样引用模
$perl -MLWP::Simple-e'getstore("http://www.163.com/","163.html")'##下载整个网页
-M+模块名和use模块名一样
```

# 第三部分:隐式循环

```bash
3：-n
增加了循环的功能,使你可以一行一行来处理文件
$perl -n -e 'print;' 1.txt ##### $perl-ne'print;'1.txt
这与下面的程序一样.
 
LINE:  while(<>;){  print;  }
<>;打开Perl命令行里的文件,一行行的读取.每一行缺省保存在$_

$perl -n -e 'print"$.-$_"'file

上面的这一行可以写成
LINE:  while(<>;){  print"$.-$_"  }
输出当前行数$.和当前行$_.



4:-p,和-n一样，但是还会打印$_的内容
如果想在循环的前后做些处理,可以使用BEGIN或ENDblock.下面的这一行计算文件里的字数.

$perl -ne 'END{print$t}@w=/(\w+)/g;$t+=@w' file.txt
每一行所有匹配的字放入数组@w,然后把@w的元素数目递加到$t.ENDblock里的print最后输出文件总字数.
还有两个参数可以让这个程序变得更简单.


5:-a
打开自动分离(split)模式.空格是缺省的分离号.输入根据分离号被分离然后放入缺省数组@F
使用-a，上面的命令可以写成这样：
$perl -ane 'END{print$x}$x+=@F'file.txt##使用了-a


6：-F
把缺省的分离号改为你想要的.例如把分离号定为非字符，上面的命令可以改为：
$perl -F'\W' -ane'END{print$x}$x+=@F'file.txt

下面通过Unixpassword文件来介绍一个复杂的例子.Unixpassword是文本文件,每一行是一个用户记录,
由冒号:分离.第7行是用户的登录shell路径.我们可以得出每一个不同shell路径被多少个用户使用:

$perl-F':'-ane'$s{$F[6]}++;'\>;-e'END{print"$_:$s{$_}"forkeys%s}'/etc/passwd

虽然现在不是一行,但是你可以看出使用参数可以解决什么问题.
```

# 第四部分：RecordSeparators数据分隔符

```bash
$/和$\--输入,输出分隔号.
$/用来分隔从文件句柄里读出的数据,缺省$/分隔号是\n,这样每次从文件句柄里就会一行行的读取
$\缺省是空字符,用来自动加到要print的数据尾端.这就是为什么很多时候print都要在末尾加上\n.
$/和$\可与-n-p一起使用.在Perl命令行上相对应为-0(零)和-l(这是L).
-0后面可以跟一个16进制或8进制数值,这个值用来付给$/.
-00打开段落模式,-0777打开slurp模式(即可以一次把整个文件读入),这与把$/设为空字符和undef一样效果.

单独使用-l有两个效果：
第一：自动chomp输入分隔号
第二：把$/值付给$\(这样print的时候就会自动在末尾加\n)

1：-l参数,用来给每一个输出加\n.例如
$perl-le'print"HelloWorld"'
```

# 第五部分：原位编辑
```bash
使用已有的参数我们可以写出很有效的Perl命令行程序.常见的UnixI/O重定向:
$perl-pe'somecode'>output.txt.txt>

这个程序从input.txt读取数据,然后做一些处理再输出到output.txt.你当然也可以把输出重定向到同一个文件里.

上面的程序可以通过-i参数做的更简单些.

2:-i
把源文件更名然后从这个更名的源文件里读取.最后把处理后的数据写入源文件.
如果-i后跟有其他字符串,这个字符串与源文件名合成后来生成一个新的文件名.
此文件会被用来储存原始文件以免被-i参数覆盖.即'$^I=".bak"'

这个例子把所有php字符替换为perl:
$perl-i-pe's/\bPHP\b/Perl/g'file.txt
程序读取文件的每一行,然后替换字符,处理后的数据重新写入(即覆盖)源文件.

如果不想覆盖源文件,可以使用
$perl-i.bak-pe's/\bPHP\b/Perl/g'file.txt

这里处理过的数据写入file.txt,file.txt.bak是源文件的备份.
```

# perl经典的例子

问题：
遇到一问题：
```bash
aaa@domain.com 2
aaa@domain.com 111
bbb@home.com 2222
bbb@home.com 1

类似这种输出，我想把他们变换成下面形式：

aaa@domain.com113
bbb@home.com2223
就是将相同邮箱名称后面的数字相加。各位大侠能否给些思路如何用perl来实现。

答案：perl-anle'$cnt{$F[0]}+=$F[1];END{print"$_\t$cnt{$_}"forkeys%cnt}'urfile
```

如果熟悉了上面几个Perl命令行参数的用法，上面的这个命令应该很好理解：
每次读取urfile的一行，由于使用了-a，打开自动分离(split)模式.空格是缺省的分离号.输入根据分离号被分离然后放入缺省数组@F中，
以文件的第一行为例子$F[0]就是aaa@domain.com,$F[1]就是2

$cnt{$F[0]}+=$F[1]就是一个哈希数组,以$F[0]为key,$F[1]为value,把相同key的数值都叠加起来.然后把文件的每一行都这样处理一次.
END{}就是在循环完之后再处理.里面的意思就是打印这个%cnt哈希数组.这个哈希数组的key就是邮箱名称,value就是叠加后的数字.

下面的是上面行命令的文本形式：
```perl
#!/usr/bin/perl  
use strict;  
use warnings;    
my %hash;  
while(<>){  
    chomp;  
    my @array=split;  
    $hash{$array[0]} += $array[1];  
}   
END{  
    foreach(keys %hash){  
        print"$_ \t $hash{$_}\n";  
    }  
}









本文转自 chengxuyonghu 51CTO博客，原文链接：http://blog.51cto.com/6226001001/1595657，如需转载请自行联系原作者
