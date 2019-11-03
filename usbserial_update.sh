#!/bin/sh
# 実行時に指定された引数の数、つまり変数 $# の値が 3 でなければエラー終了。
if [ $# -ne 1 ]; then
    echo "USBシリアルに書き込むファームウェアを指定してください"
    exit 1
fi
    echo "USBシリアルのファームウェアを更新します。"
    echo "ファームウェア："$1
    sudo dfu-programmer atmega16u2 erase
    sudo dfu-programmer atmega16u2 flash $1
    sudo dfu-programmer atmega16u2 reset
    echo "Complete!"
    exit 1
