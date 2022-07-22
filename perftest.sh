host="fabmedical-687823.documents.azure.com"
username="fabmedical-687823"
password="vOwl6LBFqroU0vZn9J28YybZv4PP3yWHXJl8bcCbeGiojUj1ydanRUL4LpvUtvGGbc9E9CCeVc6oUvz0l5XsFQ=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
