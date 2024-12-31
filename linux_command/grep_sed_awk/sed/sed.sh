#!/usr/bin/bash
echo -e "\n========================================="
echo "1.基本替换：将`file.txt`中的第一个匹配`Karry`的字符串替换为`Bob`"
echo "command:sed 's/Karry/Bob/' ../file.txt"
sed 's/Karry/Bob/' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "2.忽略大小写替换：将`file.txt`中的所有匹配`Karry`的字符串替换为`Bob`"
echo "command:sed 's/Karry/Bob/Ig' ../file.txt"
sed 's/Karry/Bob/Ig' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "3.全局替换：将`file.txt`中的所有匹配`Lily`的字符串替换为`karry`"
echo "command:sed 's/Lily/karry/g' ../file.txt"
sed 's/Lily/karry/g' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "4.指定行替换：将`file.txt`中的第4行中匹配`Joan`的字符串替换为`Carol`"
echo "command:sed '4s/Joan/Carol/' ../file.txt"
sed '4s/Joan/Carol/' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "5.行号范围替换：将`file.txt`中的第3到第6行中匹配`KARRY`的字符串替换为`karry`"
echo "command:sed '3,6s/KARRY/karry/Ig' ../file.txt"
sed '3,6s/KARRY/karry/Ig' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "6.使用 sed 进行文本替换时，默认情况下，sed 只是将替换后的文本输出到标准输出（通常是终端），而不会直接修改源文件。只有使用-i参数进行替换，会修改源文件。"
echo "6.1 替换源文件内容：直接在`file.txt`中替换所有匹配`Karry`的字符串为`Bob`，并保存修改(修改源文件)"
echo "command:sed -i 's/Karry/Bob/g' ../file.txt"
sed -i 's/Karry/Bob/g' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "6.2 备份原始文件，使用`-i`参数加上备份扩展名来实现，进行替换操作之前会创建一个`file.txt.bak`备份文件"
echo "command:sed -i.bak 's/Karry/Bob/g' ../file.txt"
sed -i.bak 's/Karry/Bob/g' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "7.删除某行：删除`file.txt`中的第3行"
echo "command:sed '3d' ../file.txt"
sed '3d' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "8.行号范围删除：删除`file.txt`中的第2到第3行"
echo "command:sed '3,4d' ../file.txt"
sed '3,4d' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "9.插入行：在`file.txt`中的第2行之前插入`This is a new line.`"
echo "command:sed '2i\This is a new line.' ../file.txt"
sed '2i\This is a new line.' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "10.追加行：在`file.txt`中的第3行之后追加`This is a new line.`"
echo "command:sed '3a\This is a new line.' ../file.txt"
sed '3a\This is a new line.' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "11.只打印`file.txt`中包含`ka`的行"
echo "command:sed -n '/ka/p' ../file.txt"
sed -n '/ka/p' ../file.txt
echo -e "\n========================================="

