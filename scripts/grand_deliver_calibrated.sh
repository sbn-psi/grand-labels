SRCDIR="../temp/calibrated_20201203"
DESTDIR=".."
set -e
#mkdir -p $DESTDIR/dawn-grand-ancillary/document

#cp x $DESTDIR/dawn-grand-ancillary/document/


#mkdir -p $DESTDIR/dawn-grand-mars/data_calibrated
#mkdir -p $DESTDIR/dawn-grand-mars/data_calibrated/GRD-L1B-090217-090218_110225-CMA
#mkdir -p $DESTDIR/dawn-grand-mars/data_calibrated/GRD-L1B-090217-090218_110225-DTS
#find $DESTDIR/dawn-grand-marscruise -name "*CMA*" -exec cp '{}' $DESTDIR/dawn-grand-mars/data_calibrated/GRD-L1B-090217-090218_110225-CMA \;
#find $DESTDIR/dawn-grand-marscruise -name "*DT*" -exec cp '{}' $DESTDIR/dawn-grand-mars/data_calibrated/GRD-L1B-090217-090218_110225-DTS \;




mkdir -p $DESTDIR/dawn-grand-vesta/data_calibrated/
cp $SRCDIR/dawn-grand-vesta/data_calibrated/BGOC/* $DESTDIR/dawn-grand-vesta/data_calibrated/
cp $SRCDIR/dawn-grand-vesta/data_calibrated/EPG/* $DESTDIR/dawn-grand-vesta/data_calibrated/



mkdir -p $DESTDIR/dawn-grand-ceres/data_calibrated/
cp $SRCDIR/dawn-grand-ceres/data_calibrated/BGOC/* $DESTDIR/dawn-grand-ceres/data_calibrated/
cp $SRCDIR/dawn-grand-ceres/data_calibrated/EPG/* $DESTDIR/dawn-grand-ceres/data_calibrated/

