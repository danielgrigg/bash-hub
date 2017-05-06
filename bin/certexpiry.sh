#/usr/bin/env bash

echo | /usr/local/Cellar/openssl/1.0.2j/bin/openssl s_client -connect $1:443 2>/dev/null | /usr/local/Cellar/openssl/1.0.2j/bin/openssl x509 -noout -dates
