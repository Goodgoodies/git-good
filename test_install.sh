#!/bin/sh

find_lines(){
    comment="# Git Good Update Export"
    case "$OSTYPE" in
        darwin*) output="export PATH=\"\$HOME/.gitgood/update:\$PATH\"" ;; # OS X
        linux*) output="export PATH=\"\$HOME/.gitgood/update:\$PATH\"" ;; # LINUX
        msys*) output="export PATH=\"\$HOME/.gitgood/update:\$PATH\"" ;; # WINDOWS
        *) return ;;
    esac

    if grep -Fxq "$comment" ~/.bashrc && grep -Fxq "$output" ~/.bashrc
    then
        echo 0 
    else
        echo 1;
    fi
}

test_install(){
    result=`find_lines`
    assertEquals \
        "Test install worked" \
        0 "${result}"
    # [messege]  \ 
    # expected actual
}

. shunit2-2.1.3/src/shell/shunit2
