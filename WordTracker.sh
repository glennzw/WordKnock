#!/bin/bash
# Arm Word document with tracker image.

img=$1
if [ "$#" -ne 1 ]; then
    echo "Please supply URL"
fi

rm -rf /tmp/TrackerTmp
mkdir -p /tmp/TrackerTmp
unzip -q Tracker.docx -d /tmp/TrackerTmp/

#Hide image in body:
#sed -i.bak "s;HERPDERP.jpg;$img;g" /tmp/TrackerTmp/word/_rels/document.xml.rels
#rm /tmp/TrackerTmp/word/_rels/document.xml.rels.bak

#Hide image in footer:
sed -i.bak "s;HERPDERP.jpg;$img;g" /tmp/TrackerTmp/word/_rels/footer1.xml.rels
rm /tmp/TrackerTmp/word/_rels/footer1.xml.rels.bak

cd /tmp/TrackerTmp && zip -qr Tracker-armed *
cd -
mv /tmp/TrackerTmp/Tracker-armed.zip ./Tracker-armed.docx


echo "Added tracking image $img to file Tracker-armed.docx"
