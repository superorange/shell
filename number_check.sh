#!/bin/bash
function isNumber() {
    read -rp "Please enter your message:" message
    #grep -q 满足条件返回0
    #shell中0为假
    if  [ $( (echo "$message" | grep -q '[^0-9]')) = 1 ]; then
        echo "不是数字"
    else
        echo "是数字"
    fi
}
isNumber
