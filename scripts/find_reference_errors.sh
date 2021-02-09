find dawn-grand-* -name "*.xml" -exec grep "logical_identifier" '{}' \; | sed -e 's~ *</*logical_identifier>~~g' | sort > declared_lids.txt
find dawn-grand-* -name "*.xml" -exec grep "lid_reference" '{}' \; | sed -e 's~ *</*lid_reference>~~g' | grep -v context | uniq | sort | uniq | sort > referenced_lids.txt

diff -b declared_lids.txt referenced_lids.txt | grep ">"