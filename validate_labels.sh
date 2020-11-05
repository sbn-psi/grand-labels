#!/usr/bin/env bash

find dawn-grand-* -name "collection*.xml" -exec ~/bin/validate-1.23.3/bin/validate '{}' \; | egrep '(FAIL)|(PASS)|(ERROR)'
find dawn-grand-* -name "bundle*.xml" -exec ~/bin/validate-1.23.3/bin/validate '{}' \; | egrep '(FAIL)|(PASS)|(ERROR)'
