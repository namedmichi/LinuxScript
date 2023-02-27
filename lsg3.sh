#!/bin/bash -e

case $1 in
    --test|-t)
        echo "Testlauf: Test-option ausgewählt"
        ;;
    --help|-h)
        echo "verwendung: $0 --test|--help|--version|-t|-h|-v"
        ;;
    --version|-v)
        echo "Version 0.0.1"
        ;;
    *)
        echo "Fehler: Für hilfe bitte $0 --help aufrufen"
        ;;
esac