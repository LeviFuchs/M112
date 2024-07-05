erstelleVorlagen.sh
#!/bin/bash


mkdir -p ./_templates


touch ./_templates/datei-1.txt
touch ./_templates/datei-2.pdf
touch ./_templates/datei-3.doc

mkdir -p ./_schulklassen

schueler_namenTBZ=("Amir-Gholamsakhi" "Yannik-Scherer" "Albara-Alasad" "Levi-Fuchs">schueler_namenSekundarstufe=("Amir-Gholamsakhi" "Yannik-Scherer" "Menkre-Carmen" "M>schueler_namenAusbildungszentrum=("Amir-Gholamsakhi" "Luca-Braendli" "Aldin-Sahinov>
echo "${schueler_namenTBZ[@]}" | tr ' ' '\n' > ./_schulklassen/M122-AP23d.txt
echo "${schueler_namenSekundarstufe[@]}" | tr ' ' '\n' > ./_schulklassen/AB3b.txt
echo "${schueler_namenAusbildungszentrum[@]}" | tr ' ' '\n' > ./_schulklassen/RAU.t>
echo "Verzeichnisse und Dateien wurden erfolgreich erstellt."








verteileDateien.sh
#!/bin/bash


SCHULKLASSEN_DIR="./_schulklassen"
TEMPLATES_DIR="./_templates"

for schulklasse_file in "$SCHULKLASSEN_DIR"/*.txt; do

  klasse_name=$(basename "$schulklasse_file" .txt)

  mkdir -p "$SCHULKLASSEN_DIR/$klasse_name"

  while IFS= read -r schueler_name; do

    schueler_dir="$SCHULKLASSEN_DIR/$klasse_name/$schueler_name"
    mkdir -p "$schueler_dir"

    cp -r "$TEMPLATES_DIR/"* "$schueler_dir/"
  done < "$schulklasse_file"
done

echo "Dateien und Verzeichnisse wurden erfolgreich verteilt."
