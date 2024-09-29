# !/usr/bin/bash
echo -e "\n========================================="
echo "1.搜索文件 file.txt 中包含 karry 的行"
echo "command:grep 'Karry' ../file.txt"
grep 'Karry' ../file.txt
# -e 可以启用对转义字符的解释
echo -e "\n========================================="

echo "2.搜索文件 file.txt 中包含 karry（不区分大小写）的行"
echo "command:grep -i 'karry' ../file.txt"
grep -i 'karry' ../file.txt
echo -e "\n========================================="

echo "3.递归搜索目录 /path/to/directory 中所有文件，查找包含 pattern 的行"
echo "command:grep -r 'Karry' /d/Dan/git/Linux/linux_command/grep_sed_awk/"
grep -r "Karry" /d/Dan/git/Linux/linux_command/grep_sed_awk/
echo -e "\n========================================="

echo "4.搜索文件 file.txt 中包含 karry 的行,并显示匹配行号"
echo "command:grep -n 'Karry' ../file.txt"
grep -n 'Karry' ../file.txt
echo -e "\n========================================="

echo "5.搜索当前目录下所有 '.txt' 文件，显示包含 'pattern' 的文件名"
echo "command:grep -l 'Karry' ../*.txt"
grep -l "Karry" ../*.txt
echo -e "\n========================================="

echo "6.搜索文件 'file.txt' 中不包含 'pattern' 的行"
echo "command:grep -v 'Karry' ../file.txt"
grep -v "Karry" ../file.txt
echo -e "\n========================================="

echo "7.搜索文件 'file.txt' 中包含 'pattern' 的行，并显示匹配行及之后的 3 行"
echo "command:grep -A 3 'Karry' file.txt"
grep -A 3 "Karry" ../file.txt
echo -e "\n========================================="

echo "8.搜索文件 'file.txt' 中包含 'pattern' 的行，并显示匹配行及之前的 3 行"
echo "command:grep -B 3 'Karry' file.txt"
grep -B 3 "Karry" ../file.txt
echo -e "\n========================================="

echo "9.搜索文件 'file.txt' 中包含 'pattern' 的行，并显示匹配行及前后各 3 行"
echo "command:grep -C 3 'Karry' file.txt"
grep -C 3 "Karry" ../file.txt
echo -e "\n========================================="

echo "10.搜索文件 'file.txt' 中包含 'Ka' 或 'Bo' 的行"
echo "command:grep -E 'Ka|Bo' file.txt"
grep -E "Ka|Bo" ../file.txt
echo -e "\n========================================="

echo "11.搜索文件 'file.txt' 中包含整个单词 'word' 的行"
echo "command:grep -w 'Karry' file.txt"
grep -w "Karry" ../file.txt
echo -e "\n========================================="

echo "12.搜索文件 'file.txt' 中的 'Karry' 并仅显示匹配的部分"
echo "command:grep -o 'Karry' file.txt"
grep -o "Karry" ../file.txt
echo -e "\n========================================="
