wget https://opendata.bordeaux-metropole.fr/api/datasets/1.0/offres-de-services-bus-tramway-gtfs/attachments/keolis_bus_zip/ -O keolis_bus.gtfs.zip
zip -d keolis_bus.gtfs.zip error.txt
wget https://opendata.bordeaux-metropole.fr/api/datasets/1.0/offres-de-services-bus-tramway-gtfs/attachments/keolis_tram_zip/ -O keolis_tram.gtfs.zip
zip -d keolis_tram.gtfs.zip error.txt
#wget https://www.pigma.org/public/opendata/nouvelle_aquitaine_mobilites/publication/naq_gir-aggregated-gtfs.zip -O naq_gir-aggregated.gtfs.zip
#wget https://www.pigma.org/public/opendata/nouvelle_aquitaine_mobilites/publication/gironde-aggregated-gtfs.zip -O naq_gir-aggregated.gtfs.zip
wget https://eu.ftp.opendatasoft.com/sncf/gtfs/export-ter-gtfs-last.zip -O export-ter-last.gtfs.zip

unzip -jo "keolis_bus.gtfs.zip" "stop_times.txt" "routes.txt" "trips.txt"
sed -i "/-M09_/d" stop_times.txt 
sed -i "/-M09_/d" trips.txt 
sed -i "/,Lianes 9,/d" routes.txt 
zip keolis_bus.gtfs.zip stop_times.txt trips.txt routes.txt

rm routes.txt
rm stop_times.txt
rm trips.txt
rm sources/keolis_bus.gtfs.zip
rm sources/keolis_tram.gtfs.zip

mv keolis_bus.gtfs.zip sources/keolis_bus.gtfs.zip
mv keolis_tram.gtfs.zip sources/keolis_tram.gtfs.zip
mv naq_gir-aggregated.gtfs.zip sources/naq_gir-aggregated.gtfs.zip
mv export-ter-last.gtfs.zip sources/export-ter-last.gtfs.zip

# compilation
java -Xmx2G -jar otp-2.0.0-shaded.jar --build --save sources

# screen -X -S test quit
# screen -d -m -t test sh scriptStart.sh