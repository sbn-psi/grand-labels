#! /usr/bin/env bash
set -e

SRCDIR="../temp/pds4_labels_gather_20201130"
DESTDIR=".."

SRC_BUNDLE=$1
BUNDLE_NAME=$2

DATEPHASE=$3

START=$4
END=$5
CREATION=$6

echo $DATEPHASE ${START}_${END}_${CREATION}

#echo browse
#mkdir -p $DESTDIR/$BUNDLE_NAME
#mkdir -p $DESTDIR/$BUNDLE_NAME/browse
#mkdir -p $DESTDIR/$BUNDLE_NAME/browse/raw/${DATEPHASE}/
#find $SRCDIR/$SRC_BUNDLE/browse -name "GRD_L1A_${START}_${END}_REPORT.*" -exec cp '{}' $DESTDIR/$BUNDLE_NAME/browse/raw/${DATEPHASE}/ \;
#find $SRCDIR/$SRC_BUNDLE/browse -name "GRD_L1A_${START}_${END}_${CREATION}.*" -exec cp '{}' $DESTDIR/$BUNDLE_NAME/browse/raw/${DATEPHASE}/ \;
#find $SRC/$SRC_BUNDLE/browse -name "GRD_L1A_${START}_${END}_L1A.*" -exec cp '{}' $DESTDIR/$BUNDLE_NAME/browse/raw/${DATEPHASE}/ \;
#find document -name "GRD_L1A_${START}_${END}_${CREATION}.pdf" -exec mv '{}' $DESTDIR/$BUNDLE_NAME/browse/${DATEPHASE}/

mkdir -p $DESTDIR/$BUNDLE_NAME/data_raw
mkdir -p $DESTDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/

echo hk 
mkdir -p $DESTDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/hk
find $SRCDIR -name "GRD-L1A-${START}-${END}_${CREATION}-RDG*" -exec cp '{}' $DESTDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/hk \;
find $SRCDIR -name "GRD-L1A-${START}-${END}_${CREATION}-SCI-SCL*" -exec cp '{}' $DESTDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/hk \;
find $SRCDIR -name "GRD-L1A-${START}-${END}_${CREATION}-SOH-SCL*" -exec cp '{}' $DESTDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/hk \;
find $SRCDIR -name "GRD-L1A-${START}-${END}_${CREATION}-STA*" -exec cp '{}' $DESTDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/hk \;

echo gamma 
mkdir -p $DESTDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/gamma
find $SRCDIR -name "GRD-L1A-${START}-${END}_${CREATION}-BGO.*" -exec cp '{}' $DESTDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/gamma \;
find $SRCDIR -name "GRD-L1A-${START}-${END}_${CREATION}-EMG*" -exec cp '{}' $DESTDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/gamma \;

echo neutron
mkdir -p $DESTDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/neutron
find $SRCDIR -name "GRD-L1A-${START}-${END}_${CREATION}-BGO2*" -exec cp '{}' $DESTDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/neutron \;
find $SRCDIR -name "GRD-L1A-${START}-${END}_${CREATION}-BLP2*" -exec cp '{}' $DESTDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/neutron \;
find $SRCDIR -name "GRD-L1A-${START}-${END}_${CREATION}-EMN*" -exec cp '{}' $DESTDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/neutron \;
find $SRCDIR -name "GRD-L1A-${START}-${END}_${CREATION}-PHOS*" -exec cp '{}' $DESTDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/neutron \;
