# !/usr/bin/bash
echo -e "\n========================================="
echo "搜索文件 file.txt 中包含 karry 的行"
echo "command:grep 'Karry' ../file.txt"
grep 'Karry' ../file.txt
# -e 可以启用对转义字符的解释
echo -e "\n========================================="

echo "搜索文件 file.txt 中包含 karry（不区分大小写）的行"
echo "command:grep -i 'karry' ../file.txt"
grep -i 'karry' ../file.txt
echo -e "\n========================================="

echo "递归搜索目录 /path/to/directory 中所有文件，查找包含 pattern 的行"
echo "command:grep -r 'Karry' /d/Dan/git/Linux/linux_command/grep_sed_awk/"
grep -r "Karry" /d/Dan/git/Linux/linux_command/grep_sed_awk/
echo -e "\n========================================="

echo "搜索文件 file.txt 中包含 karry 的行,并显示匹配行号"
echo "command:grep -n 'Karry' ../file.txt"
grep -n 'Karry' ../file.txt
echo -e "\n========================================="

echo "搜索当前目录下所有 '.txt' 文件，显示包含 'pattern' 的文件名"
echo "command:grep -l 'Karry' ../*.txt"
grep -l "Karry" ../*.txt
echo -e "\n========================================="

echo "搜索文件 'file.txt' 中不包含 'pattern' 的行"
echo "command:grep -v 'Karry' ../file.txt"
grep -v "Karry" ../file.txt
echo -e "\n========================================="
