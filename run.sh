#!/bin/bash
mkdir -p .paket
PAKET_VERSION=$(curl https://github.com/fsprojects/Paket/releases/latest | egrep 'tag/(\d+.\d+.\d+)' | cut -d / -f 8 | cut -d "\"" -f 1)
curl -L "https://github.com/fsprojects/Paket/releases/download/$PAKET_VERSION/paket.bootstrapper.exe" -o .paket/paket.bootstrapper.exe
mono .paket/paket.bootstrapper.exe
mono .paket/paket.exe init