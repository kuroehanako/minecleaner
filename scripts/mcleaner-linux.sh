#!/bin/bash

echo 'MineCleaner를 시작합니다.'

PS3='옵션을 선택하십시오. : '

select item in "모드 초기화" "완전 초기화" "나가기"
do
    case "$REPLY" in
        1)
            echo "기존의 모드를 TAR 파일로 압축하여 백업합니다."
            tar -cvf mods.tar ~/.minecraft/mods
            rm ~/.minecraft/mods/*
            echo "완료되었습니다."
            ;;
        2)
            echo "기존의 모드와 세계를 TAR 파일로 압축하여 백업합니다."
            echo "\e[31m런처에 로그인된 모든 계정은 로그아웃되며, 프로파일 역시 삭제됩니다.\e[0m"
            PS3='계속하시겠습니까?'
            
            select item in "예" "아니오"
            do
                case "$REPLY" in
                    1)
                        tar -cvf minecraft-backup.tar ~/.minecraft
                        rm ~/.minecraft
                         echo "완료되었습니다."
                        ;;
                    2)
                        exit
                        ;;
                    *)
                        exit
                        ;;
                esac
            done
            ;;
        3)
            exit
            ;;
        *)
            echo "알 수 없는 옵션입니다."
            ;;
    esac
done