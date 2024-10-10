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
echo "6."
echo "command:sed  ../file.txt"
sed  ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "7."
echo "command:sed  ../file.txt"
sed  ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "8."
echo "command:sed  ../file.txt"
sed  ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "9."
echo "command:sed  ../file.txt"
sed  ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "10."
echo "command:sed  ../file.txt"
sed  ../file.txt
echo -e "\n========================================="

