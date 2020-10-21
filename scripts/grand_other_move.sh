BASEDIR="staging/grand-pds4"
set -e
#mkdir -p $BASEDIR/dawn-grand-ancillary/document

#cp x $BASEDIR/dawn-grand-ancillary/document/

mkdir -p $BASEDIR/dawn-grand-cruise/document/activity_reports
cp $BASEDIR/dawn-grand-marscruise/document/DAWN_GRAND_DC034.* $BASEDIR/dawn-grand-cruise/document//activity_reports
cp $BASEDIR/dawn-grand-marscruise/document/DAWN_GRAND_DC041.* $BASEDIR/dawn-grand-cruise/document//activity_reports
cp $BASEDIR/dawn-grand-marscruise/document/DAWN_GRAND_CRUISE_OPS.* $BASEDIR/dawn-grand-cruise/document//activity_reports


mkdir -p $BASEDIR/dawn-grand-mars/document/activity_reports
cp $BASEDIR/dawn-grand-ceres/document/GRAND_DATA_PROC-130711.pdf $BASEDIR/dawn-grand-mars/document/
cp $BASEDIR/dawn-grand-marscruise/document/MCA_RESULTS.* $BASEDIR/dawn-grand-mars/document/activity_reports

mkdir -p $BASEDIR/dawn-grand-mars/data_calibrated
mkdir -p $BASEDIR/dawn-grand-mars/data_calibrated/GRD-L1B-090217-090218_110225-CMA
mkdir -p $BASEDIR/dawn-grand-mars/data_calibrated/GRD-L1B-090217-090218_110225-DTS
find $BASEDIR/dawn-grand-marscruise -name "*CMA*" -exec cp '{}' $BASEDIR/dawn-grand-mars/data_calibrated/GRD-L1B-090217-090218_110225-CMA \;
find $BASEDIR/dawn-grand-marscruise -name "*DT*" -exec cp '{}' $BASEDIR/dawn-grand-mars/data_calibrated/GRD-L1B-090217-090218_110225-DTS \;


mkdir -p $BASEDIR/dawn-grand-vesta-new/document


mkdir -p $BASEDIR/dawn-grand-vesta-new/browse/calibrated/
cp $BASEDIR/dawn-grand-vesta/browse/VESTA_ENCOUNTER_TIMELINE* $BASEDIR/dawn-grand-vesta-new/browse/calibrated/
cp $BASEDIR/dawn-grand-vesta/browse/GAMMA_RAY_SPECTRA_BY_SUBPHASE* $BASEDIR/dawn-grand-vesta-new/browse/calibrated/
cp $BASEDIR/dawn-grand-vesta/browse/GAMMA_RAY_SPECTRA_BY_SUBPHASE* $BASEDIR/dawn-grand-vesta-new/browse/calibrated/

mkdir -p $BASEDIR/dawn-grand-vesta-new/browse/derived/
cp $BASEDIR/dawn-grand-vesta/browse/GRD* $BASEDIR/dawn-grand-vesta-new/browse/derived/

mkdir -p $BASEDIR/dawn-grand-vesta-new/document/
#cp x $BASEDIR/dawn-grand-vesta-new/document/

mkdir -p $BASEDIR/dawn-grand-vesta-new/data_calibrated/
cp $BASEDIR/dawn-grand-vesta/data_calibrated/BGOC/* $BASEDIR/dawn-grand-vesta-new/data_calibrated/
cp $BASEDIR/dawn-grand-vesta/data_calibrated/EPG/* $BASEDIR/dawn-grand-vesta-new/data_calibrated/

mkdir -p $BASEDIR/dawn-grand-vesta-new/data_derived/
cp $BASEDIR/dawn-grand-vesta/data_derived/GRD* $BASEDIR/dawn-grand-vesta-new/data_derived/

mkdir -p $BASEDIR/dawn-grand-vesta-new/miscellaneous/shape_model
cp $BASEDIR/dawn-grand-vesta/data_derived/Gaskell_Claudia_2014_05_13_dec1_140802.* $BASEDIR/dawn-grand-vesta-new/miscellaneous/shape_model
cp $BASEDIR/dawn-grand-vesta/spice_kernels/dawn_vesta_v04b.* $BASEDIR/dawn-grand-vesta-new/miscellaneous/shape_model

mkdir -p $BASEDIR/dawn-grand-ceres-new/browse/calibrated/
#cp x $BASEDIR/dawn-grand-ceres-new/browse/calibrated/

mkdir -p $BASEDIR/dawn-grand-ceres-new/browse/derived/
cp $BASEDIR/dawn-grand-ceres/browse/GRD* $BASEDIR/dawn-grand-ceres-new/browse/derived/

mkdir -p $BASEDIR/dawn-grand-ceres-new/document/
#cp x $BASEDIR/dawn-grand-ceres-new/document/

mkdir -p $BASEDIR/dawn-grand-ceres-new/data_calibrated/
cp $BASEDIR/dawn-grand-ceres/data_calibrated/BGOC/* $BASEDIR/dawn-grand-ceres-new/data_calibrated/
cp $BASEDIR/dawn-grand-ceres/data_calibrated/EPG/* $BASEDIR/dawn-grand-ceres-new/data_calibrated/

mkdir -p $BASEDIR/dawn-grand-ceres-new/data_derived/
cp $BASEDIR/dawn-grand-ceres/data_derived/GRD* $BASEDIR/dawn-grand-ceres-new/data_derived/


mkdir -p $BASEDIR/dawn-grand-ceres-new/miscellaneous/shape_model
cp $BASEDIR/dawn-grand-ceres/data_derived/CERES_SPC181019_0512_PLT_1.00.* $BASEDIR/dawn-grand-ceres-new/miscellaneous/shape_model


pushd $BASEDIR
tar -czf dawn-grand-ceres-new.tar.gz dawn-grand-ceres-new
tar -czf dawn-grand-vesta-new.tar.gz dawn-grand-vesta-new
tar -czf dawn-grand-cruise.tar.gz dawn-grand-cruise
tar -czf dawn-grand-mars.tar.gz dawn-grand-mars