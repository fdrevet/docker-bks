#!/usr/bin/env bash

export CLASSPATH=/src/bcprov.jar

keytool \
      -import \
      -v \
      -trustcacerts \
      -alias 0 \
      -file <(openssl x509 -in cert.pem) \
      -keystore cert.bks \
      -storetype BKS \
      -provider org.bouncycastle.jce.provider.BouncyCastleProvider \
      -providerpath /src/bcprov.jar \
      -storepass "$1"
