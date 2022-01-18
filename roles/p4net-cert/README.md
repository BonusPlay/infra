Article with everything:

https://systemoverlord.com/2020/06/14/private-ca-with-x-509-name-constraints.html

### creating new cert

```
export DOMAIN=warez.bonus.p4
openssl genrsa -out "${DOMAIN}.key" 4096
openssl req -new -key "${DOMAIN}.key" -extensions v3_ca -batch -out "${DOMAIN}.csr" -utf8 -subj "/CN=${DOMAIN}"
openssl x509 -req -sha256 -days 365 -in "${DOMAIN}.csr" -CAkey ca-bonus.key -CA ca-bonus.crt -out "${DOMAIN}.crt" -extfile sign.cfg
rm ${DOMAIN}.csr
```
