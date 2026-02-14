#!/bin/bash

pause() {
    read -rp "Appuyez sur [Entrée] pour continuer..."
}

invalid_option() {
    echo "Option invalide."
    pause
    main_menu
}

main_menu(){

    clear
    echo "Bienvenue dans LASS (Linux Automatic Script System)"
    echo
    cat ASCII_lass.txt
    echo 
    echo "Que voulez-vous faire ?"
    echo -e "0 - Consulter la liste des scripts\n2 - Executer un script\n3 - Configurer un script\n4 - Ajouter une tâche au cron\nq - Quitter"
    echo

    read -rp "Votre choix : " choix
    case $choix in
        0) raid0 ;;
        1) raid1 ;;
        2) raid5 ;;
        3) raid6 ;;
        4) raid10 ;;
        5) autres ;;
        6) sys_info ;;
        7) raid_helper ;;
        9) software_info ;;
        q|Q) echo "Merci d'avoir utilisé LDMB !"; sleep 1 ; exit 0 ;;
        *) invalid_option ;;
    esac
    
}


main_menu
