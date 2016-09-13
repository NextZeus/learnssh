#!/bin/bash

# ${var} 变量本来的值
# ${var:-word} 如果变量var 为空或已被删除(unset) 那么返回word 但不改变var的值
# ${var:=word} 如果变量var 为空或已被删除(unset) 那么返回word 并将var的值设置为word
# ${var:?message} 如果变量var为空或已被删除(unset) 那么将消息message送到标准错误输出 可以用来检测变量var是否可以被正常赋值
# 若此替换出现在shell脚本中 那么脚本将停止运行

# ${var:+word} 如果变量var被定义 那么返回word 但不改变var的值

echo ${var:-"Variable is not set"}
echo "1 - Value of var is ${var}"

echo ${var:="Variable is not set"}
echo "2 - Value of var is ${var}"

unset var
echo ${var:+"This is default value"}
echo "3 - Value of var is $var"

var="Prefix"
echo ${var:+"This is default value"}
echo "4 - Value of var is $var"

echo ${var:?"Print this message"}
echo "5 - Value of var is ${var}"
