#!/bin/bash

echo "what is your name ?!!"
read PERSON
echo "Hello , $PERSON"
yourName = "小东"
//{} 帮助解释器识别变量的边界
echo ${yourName}

for skill in Ada Coffe Action Java
do
    echo "I am good at ${skill} Script"
done
# readonely myUrl 只读变量

# unset myUrl #删除变量
echo $$ # $ 表示当前Shell进程的ID 即pid

# $0 当前脚本的文件名
# $n 传递给脚本或函数的参数. n 是一个数字,表示第几个参数 ，第一个参数$1,第二个参数$2
# $# 传递给脚本或函数的参数个数
# $* 传递给脚本或函数的所有参数
# $@ 传递给脚本或函数的所有参数
# $? 上个命令的退出状态 或函数的返回值
# $$ 当前Shell的进程ID 
echo "#:" $# "*:" $* "@:" $@
