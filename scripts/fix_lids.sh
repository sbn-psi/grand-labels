
find dawn-grand-ancillary -name "*.xml" -exec sed -i.bak \
    -e 's/urn:nasa:pds:dawn-grand-vesta:document:dawn_grand_archive_description/urn:nasa:pds:dawn-grand-ancillary:document:dawn_grand_archive_description.pdf/' \
    -e 's/urn:nasa:pds:dawn-grand-vesta:document:grd_l1b_ephemeris_pointing_geometry_v3/urn:nasa:pds:dawn-grand-ancillary:document:dawn_grand_ephemeris_pointing_geometry.pdf/' \
    -e 's/urn:nasa:pds:dawn_grand:data:state_table/urn:nasa:pds:dawn-grand-ancillary:miscellaneous:grd_state_table/' '{}' \;

find dawn-grand-ceres -name "*.xml" -exec sed -i.bak \
    -e 's/urn:nasa:pds:dawn-grand-ceres:document:grd_l1b_ephemeris_pointing_geometry_v3/urn:nasa:pds:dawn-grand-ancillary:document:dawn_grand_ephemeris_pointing_geometry.pdf/' \
    -e 's/urn:nasa:pds:dawn-grand-ceres:document:grd_l1b_bgo_data_processing_v4_1/urn:nasa:pds:dawn-grand-ancillary:document:dawn_grand_bgo_calibrated_data_processing.pdf/' \
    -e 's/urn:nasa:pds:dawn-grand-ceres:data_reduced:ceres_spc181019_0512_plt_1_00.stl/urn:nasa:pds:dawn-grand-ceres:miscellaneous:ceres_spc181019_0512_plt_1_00.stl/' \
    -e 's/urn:nasa:pds:dawn_grand:data:state_table/urn:nasa:pds:dawn-grand-ancillary:miscellaneous:grd_state_table/' '{}' \;

find dawn-grand-cruise -name "*.xml" -exec sed -i.bak \
    -e 's/urn:nasa:pds:dawn_grand:data:state_table/urn:nasa:pds:dawn-grand-ancillary:miscellaneous:grd_state_table/' '{}' \;

find dawn-grand-mars -name "*.xml" -exec sed -i.bak \
    -e 's/urn:nasa:pds:dawn_grand:data:state_table/urn:nasa:pds:dawn-grand-ancillary:miscellaneous:grd_state_table/' '{}' \;

find dawn-grand-vesta -name "*.xml" -exec sed -i.bak \
    -e 's/urn:nasa:pds:dawn-grand-ceres:document:grd_l1b_bgo_data_processing_v4_1/urn:nasa:pds:dawn-grand-ancillary:document:dawn_grand_bgo_calibrated_data_processing.pdf/' \
    -e 's/urn:nasa:pds:dawn-grand-vesta:SPICE:dawn_vesta_v04b.tpc/urn:nasa:pds:dawn-grand-vesta:miscellaneous:dawn_vesta_v04b.tpc/' \
    -e 's/urn:nasa:pds:dawn-grand-vesta:data_reduced:Gaskell_Claudia_2014_05_13_dec1_140802.stl/urn:nasa:pds:dawn-grand-vesta:miscellaneous:gaskell_claudia_2014_05_13_dec1_140802.stl/' \
    -e 's/urn:nasa:pds:dawn_grand:data:state_table/urn:nasa:pds:dawn-grand-ancillary:miscellaneous:grd_state_table/' '{}' \;
