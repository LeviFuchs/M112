mkdir -p Template

# Arrays mit Namen
klasse_namen=("Levin" "Noah" "Luca" "Yannik" "Albara" "Amir" "Rana")

# Dateinamen
dateien=("klasse.txt" "verwandtschaft.txt" "gemischt.txt")

# Erstellung der Dateien und Befüllung mit Namen
echo "Erstelle Datei: ${dateien[0]}"
for name in "${klasse_namen[@]}"; do
  echo $name >> Template/${dateien[0]}
done

echo "Erstelle Datei: ${dateien[1]}"
for name in "${verwandtschaft_namen[@]}"; do
  echo $name >> Template/${dateien[1]}
done

echo "Erstelle Datei: ${dateien[2]}"
for (( i=0; i<${#klasse_namen[@]}; i++ )); do
  echo "${klasse_namen[i]}" >> Template/${dateien[2]}
  echo "${verwandtschaft_namen[i]}" >> Template/${dateien[2]}
done

echo "Dateien wurden erfolgreich erstellt und im Template-Verzeichnis abgelegt."
