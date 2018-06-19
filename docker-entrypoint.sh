#!/usr/bin/env bash

export CLASSPATH=/src/bcprov.jar

keytool \
      -import \
      -v \
      -trustcacerts \
      -alias 0 \
      -file <(openssl x509 -in /etc/openssl/$PEM_FILE \
      -keystore /etc/openssl/$BKS_FILE \
      -storetype BKS \
      -provider org.bouncycastle.jce.provider.BouncyCastleProvider \
      -providerpath /src/bcprov.jar \
      -storepass "$STORE_PASSWORD"
