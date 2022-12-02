#!/bin/sh
echo "input an URL : ";
read website;
echo "Generating a QR code..."
sleep 1;
curl http://qrenco.de/"$website";
