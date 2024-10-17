#!/bin/bash

# Dossier de base du projet
BASE_DIR=$(pwd)

echo "Nettoyage du projet Symfony et React..."

# Suppression des entités dans src/Entity (Symfony)
echo "Suppression des entités dans src/Entity..."
find "$BASE_DIR/src/Entity" -type f -name '*.php' -delete

# Suppression des contrôleurs dans src/Controller (Symfony)
echo "Suppression des contrôleurs dans src/Controller..."
find "$BASE_DIR/src/Controller" -type f -name '*.php' -delete

# Suppression des formulaires dans src/Form (Symfony)
echo "Suppression des fichiers Form dans src/Form..."
find "$BASE_DIR/src/Form" -type f -name '*.php' -delete

# Suppression des migrations dans migrations/ (Symfony)
echo "Suppression des fichiers de migration dans migrations/..."
find "$BASE_DIR/migrations" -type f -name '*.php' -delete

# Suppression des contrôleurs React dans assets/react/controllers
echo "Suppression des contrôleurs React dans assets/react/controllers..."
find "$BASE_DIR/assets/react/controllers" -type f \( -name '*.js' -o -name '*.jsx' \) -delete

# Suppression des fichiers Twig dans templates/ sauf base.html.twig
echo "Suppression des fichiers Twig dans templates/, sauf base.html.twig..."
find "$BASE_DIR/templates" -type f -name '*.html.twig' ! -name 'base.html.twig' -delete

# Suppression des dossiers vides dans templates/
find "$BASE_DIR/templates" -type d -empty -delete

# Suppression des fichiers de cache et logs (Symfony)
echo "Suppression des fichiers de cache et logs..."
rm -rf "$BASE_DIR/var/cache" "$BASE_DIR/var/log"

echo "Nettoyage terminé ! Les fichiers Symfony et les contrôleurs React ont été supprimés."
