#!/usr/bin/bash
echo -e "\n========================================="
echo "1.打印文件file.txt的每一行"
echo "command:awk '{ print }' ../file.txt"
awk '{ print }' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "2.假设文件内容用逗号分隔，打印第1、第3个字段。(其中-F ',' 可以直接简写成-F,)"
echo "command:awk -F ',' '{ print $1, $3 }' ../file.txt"
awk -F ',' '{ print $1, $3 }' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "3.打印包含“Karry”字符串的行"
echo "command:awk '/Karry/ { print }' ../file.txt"
awk '/Karry/ { print }' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "4.打印第2列字段(age)大于30的人的姓名"
echo "command:awk -F ',' '$2 > 30 { print $1 }' ../file.txt"
awk -F ',' '$2 > 30 { print }' ../file.txt
awk -F ',' '$2 > 30 { print $0 }' ../file.txt
awk -F ',' '$2 > 30 { print $1 }' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "5.为变量age赋值并使用"
echo "command:awk -F ',' -v age=30 '$2 > age { print $0 }' ../file.txt"
awk -F ',' -v age=30 '$2 > age { print $0 }' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "6.BEGIN块在处理任何输入行之前执行; END块在处理完所有输入行后执行"
echo "  计算file.txt文件中第4列字段(工资)的总和"
echo "command:awk -F ',' 'BEGIN { sum=0 } { sum += $4 } END { print sum }' ../file.txt"
awk -F ',' 'BEGIN { sum=0 } { sum += $4 } END { print sum }' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "7.将file.txt文件格式转换为TSV(Tab Separated Values)格式"
echo "command:awk 'BEGIN { FS=","; OFS="\t" } { $1=$1; print }' ../file.txt"
echo "BEGIN { FS=","; OFS="\t" }：在处理开始时，将输入字段分隔符设置为逗号，将输出字段分隔符设置为制表符"
echo "$1=$1; print：通过赋值操作强制awk重新解析字段，然后输出"
awk 'BEGIN { FS=","; OFS="\t" } { $1=$1; print }' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "8.假设想提取`Name`和`Age`列，并格式化输出为'Name:Age years old'"
echo "command:awk -F ',' '{ print "Name: " $1 ", Age: " $2 " years old" }' ../file.txt"
awk -F ',' '{ print "Name: " $1 ", Age: " $2 " years old" }' ../file.txt
echo -e "\n========================================="

echo -e "\n========================================="
echo "9.格式转换&-f选项"
echo -e "\n========================================="

