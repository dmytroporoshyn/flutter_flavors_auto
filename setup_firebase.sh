#!/bin/bash
#

#Setup PROD Flavor
flutterfire config \
--project=flutter-flavor-example \
--out=lib/firebase_options_prod.dart \
--ios-bundle-id=com.example.flavors.auto.prod \
--android-package-name=com.example.flavors.auto.prod \
--yes

#Setup DEV Flavor
flutterfire config \
--project=flutter-flavor-example \
--out=lib/firebase_options_dev.dart \
--ios-bundle-id=com.example.flavors.auto \
--android-package-name=com.example.flavors.auto \
--yes

#Setup STAGING Flavor
flutterfire config \
--project=flutter-flavor-example \
--out=lib/firebase_options_staging.dart \
--ios-bundle-id=com.example.flavors.auto.staging \
--android-package-name=com.example.flavors.auto.staging \
--yes