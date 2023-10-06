utilisateur="Marion BORNE"

date_et_heure=$(date +"%d-%m-%Y-%H:%M")

nombre_connexions=$(last | grep -r "$utilisateur" | wc -l)

fichier="number_connection-$date_et_heure"

echo "Nombre de connexion de $utilisateur : $nombre_connexions" > "$fichier"

tar -cvf "/mnt/c/Users/Marion BORNE/Desktop/shell-exe/JOB08/Backup/$fichier.tar" "$fichier"

rm "/mnt/c/Users/Marion BORNE/Desktop/shell-exe/JOB08/$fichier"






