#!/bin/bash

sed -i '/,----/d' $1
sed -i '/`----/d' $1
sed -i 's/^ \+\(.*\)/\1/g' $1
sed -i 's/^|\(.*\)/>\1/g' $1
sed -i '/^=\+$/d' $1

echo -n "char count: $(wc -m $1)"
