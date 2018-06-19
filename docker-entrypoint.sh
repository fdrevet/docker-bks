#!/usr/bin/env bash

export CLASSPATH=/src/bcprov.jar

keytool \
      -import \
      -v \
      -trustcacerts \
      -alias 0 \
      -file <(openssl x509 -in /etc/openssl/input.pem \
      -keystore /etc/openssl/output.bks \
      -storetype BKS \
      -provider org.bouncycastle.jce.provider.BouncyCastleProvider \
      -providerpath /src/bcprov.jar \
      -storepass "$STORE_PASSWORD"
