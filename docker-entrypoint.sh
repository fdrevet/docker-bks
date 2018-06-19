#!/usr/bin/env bash

export CLASSPATH=/src/bcprov.jar

keytool \
      -import \
      -v \
      -trustcacerts \
      -alias 0 \
      -file <(openssl x509 -in $CERT_FILE) \
      -keystore $ \
      -storetype $BKS_FILE \
      -provider org.bouncycastle.jce.provider.BouncyCastleProvider \
      -providerpath /src/bcprov.jar \
      -storepass "$STORE_PASSWORD"
