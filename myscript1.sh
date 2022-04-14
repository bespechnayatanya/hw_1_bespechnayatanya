#!/bin/bash
echo "first script"
cd papka1
mkdir papka{7..9}
cd papka7
touch sc_{1..3}.txt sc_{4..5}.json
mkdir papka{10..12}
ls -la
cd ..
mv papka7/{sc_1.txt,sc_4.json} papka8
echo "done"
