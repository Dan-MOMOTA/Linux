sed是一个流编辑器，主要用于对文本进行非交互式编辑。它可以进行插入、删除、替换、提取等操作，是文本处理和转换的利器。

sed功能：
    文本替换和删除
    模式匹配和文本插入
    支持脚本编写进行复杂的文本处理
    数据流操作

## 基本格式
    sed [选项参数] 'script' [file]
    参数说明：
        1）script：sed 内置的命令字符。主要是用于对文件进行增删改查等操作。
            常见内置命令字符：
                a：表示对文本进行追加操作，在指定行后面添加一行或多行文本；
                d：表示删除匹配行；
                i：表示插入文本，在指定行前添加一行或多行文本；
                p：表示打印匹配行内容，通常与-n一同使用；
                s/正则/替换内容/g：表示匹配正则内容，然后替换内容（支持正则表达式），结尾g表示全局匹配；
        2）file：要处理的输入文件。若不指定文件，sed会从标准输入读取。
        3）常用选项参数：
        |-------------------|----------------------------------------------------------------------------------------------|
        |       参数        |                                            说明                                              |
        |-------------------|----------------------------------------------------------------------------------------------|
        |        -n         |表示取消默认的sed输出，通常与sed内置命令p一起使用                                             |
        |     -e script     |直接在命令行上添加要执行的sed脚本                                                             |
        |  -f script-file   |从脚本文件中读取sed命令                                                                       |
        |    -i [SUFFIX]    |直接修改文件内容，而不是输出到标准输出。可以选择性地备份文件。如果不加-i，sed修改的是内存数据 |
        |        -r         |使用扩展正则表达式                                                                            |
        |         s         |将文件视为独立的文件，而不是单一的流                                                          |
        |-------------------|----------------------------------------------------------------------------------------------|
