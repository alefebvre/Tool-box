#!/bin/bash

curl https://scrutinizer-ci.com/g/alefebvre/Tool-box/inspections/76ed71c6-f5cd-41bb-a1d7-f7e208bc5d9c.diff?s=77733959b98bc633370442396c478c5122af8885 \
    | git apply -v --index