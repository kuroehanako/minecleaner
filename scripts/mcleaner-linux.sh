#!/bin/bash

echo 'MineCleaner를 시작합니다.'

echo '옵션을 선택하십시오.'

PS3='Menu: '

select item in "모드 초기화" "완전 초기화" "나가기"
do
    case "$REPLY" in
        1)
            rm ~/.minecraft/mods/*
            ;;
        2)
            rm ~/.minecraft
            ;;
        3)
            exit
            ;;
        *)
            echo "알 수 없는 옵션입니다."
            ;;
    esac
done