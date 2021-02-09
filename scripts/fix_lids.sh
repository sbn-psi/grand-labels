
find dawn-grand-ancillary -name "*.xml" -exec sed -i.bak \
    -e 's/urn:nasa:pds:dawn-grand-vesta:document:dawn_grand_archive_description/urn:nasa:pds:dawn-grand-ancillary:document:dawn_grand_archive_description.pdf/' \
    -e 's/urn:nasa:pds:dawn-grand-vesta:document:grd_l1b_ephemeris_pointing_geometry_v3/urn:nasa:pds:dawn-grand-ancillary:document:dawn_grand_ephemeris_pointing_geometry.pdf/' \
    -e 's/urn:nasa:pds:dawn_grand:data:state_table/urn:nasa:pds:dawn-grand-ancillary:miscellaneous:grd_state_table/' '{}' \;

find dawn-grand-ceres -name "*.xml" -exec sed -i.bak \
    -e 's/urn:nasa:pds:dawn-grand-ceres:document:grd_l1b_ephemeris_pointing_geometry_v3/urn:nasa:pds:dawn-grand-ancillary:document:dawn_grand_ephemeris_pointing_geometry.pdf/' \
    -e 's/urn:nasa:pds:dawn_grand:data:state_table/urn:nasa:pds:dawn-grand-ancillary:miscellaneous:grd_state_table/' '{}' \;
