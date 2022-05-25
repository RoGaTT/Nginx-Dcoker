if [ -z "$1" ]
then
  echo 'Domain is required';
  exit 1;
fi

docker compose run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ --agree-tos --email firestyl@yandex.ru --domains $1