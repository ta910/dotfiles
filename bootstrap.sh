#!/bin/sh

#==================================
# 引数:
# 第１引数: PCのMACアドレス
#==================================
sh ./bootstrap/vim.sh
sh ./bootstrap/squid.sh $1
