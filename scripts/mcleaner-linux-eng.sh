#!/bin/bash

echo 'Starting MineCleaner.'

PS3='Select Option. : '

select item in "Reset Mods" "Full Reset" "Exit"
do
    case "$REPLY" in
        1)
            echo "Existing mods are archived to TAR file."
            tar -cvf mods.tar ~/.minecraft/mods
            rm ~/.minecraft/mods/*
            echo "Done."
            exit
            ;;
        2)
            echo "Existing mods and worlds are archived to TAR file."
            echo "\e[31mAll profiles and accounts will be removed!\e[0m"
            PS3='Continue? : '
            
            select item in "YES" "NO"
            do
                case "$REPLY" in
                    1)
                        tar -cvf minecraft-backup.tar ~/.minecraft
                        rm ~/.minecraft
                        echo "Done."
                        exit
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
            echo "Unknown options."
            ;;
    esac
done
