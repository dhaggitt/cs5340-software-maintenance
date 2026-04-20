#!/bin/bash

mkdir -p exports/png
mkdir -p exports/svg

find diagrams -name "*.puml" -exec plantuml -tpng -o ../exports/png {} \;
find diagrams -name "*.puml" -exec plantuml -tsvg -o ../exports/svg {} \;

echo "Diagrams rendered!"