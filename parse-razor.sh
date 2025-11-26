#!/bin/bash

# Script pour parser des fichiers Razor avec tree-sitter
# Usage: ./parse-razor.sh fichier.razor [options supplémentaires]

if [ $# -eq 0 ]; then
    echo "Usage: $0 <fichier.razor> [options tree-sitter]"
    exit 1
fi

FILE="$1"
shift

# Vérifier que le fichier existe
if [ ! -f "$FILE" ]; then
    echo "Erreur: Le fichier '$FILE' n'existe pas"
    exit 1
fi

# Parser avec le scope source.razor
tree-sitter parse --scope source.razor "$FILE" "$@"
