klassen=("Klasse1" "Klasse2")
lernende=("Schueler1" "Schueler2" "Schueler3")

# Klassenverzeichnisse anlegen
for klasse in "${klassen[@]}"; do
  mkdir -p $klasse
  echo "Verzeichnis $klasse wurde erstellt."
done

# Lernendenverzeichnisse anlegen und Dateien kopieren
for klasse in "${klassen[@]}"; do
  for schueler in "${lernende[@]}"; do
    lernendenverzeichnis="$klasse/$schueler"
    mkdir -p $lernendenverzeichnis
    echo "Verzeichnis $lernendenverzeichnis wurde erstellt."
    
    # Dateien kopieren
    cp Template/* $lernendenverzeichnis/
    echo "Dateien wurden in $lernendenverzeichnis kopiert."
  done
done

echo "Alle Verzeichnisse wurden erstellt und Dateien verteilt."
