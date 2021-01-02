host="fabmedical-jhw.documents.azure.com"
username="fabmedical-jhw"
password="0I0XSlcczqNyOyvH4KK2cw3nSqVYs5eTX8XaUdTqOY8KweOFrp10vz7a5iTC7T1GcLFIBe35Lpo7JjSEudxWZA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
