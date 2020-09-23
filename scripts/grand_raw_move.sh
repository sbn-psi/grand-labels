#! /usr/bin/env bash
set -e

BASEDIR="staging/grand-pds4"

SRC_BUNDLE=$1
BUNDLE_NAME=$2

DATEPHASE=$3

START=$4
END=$5
CREATION=$6

echo $DATEPHASE ${START}_${END}_${CREATION}

echo browse
mkdir -p $BASEDIR/$BUNDLE_NAME
mkdir -p $BASEDIR/$BUNDLE_NAME/browse
mkdir -p $BASEDIR/$BUNDLE_NAME/browse/raw/${DATEPHASE}/
find $BASEDIR/$SRC_BUNDLE/browse -name "GRD_L1A_${START}_${END}_REPORT.*" -exec cp '{}' $BASEDIR/$BUNDLE_NAME/browse/raw/${DATEPHASE}/ \;
find $BASEDIR/$SRC_BUNDLE/browse -name "GRD_L1A_${START}_${END}_${CREATION}.*" -exec cp '{}' $BASEDIR/$BUNDLE_NAME/browse/raw/${DATEPHASE}/ \;
find $BASEDIR/$SRC_BUNDLE/browse -name "GRD_L1A_${START}_${END}_L1A.*" -exec cp '{}' $BASEDIR/$BUNDLE_NAME/browse/raw/${DATEPHASE}/ \;
#find document -name "GRD_L1A_${START}_${END}_${CREATION}.pdf" -exec mv '{}' $BASEDIR/$BUNDLE_NAME/browse/${DATEPHASE}/

mkdir -p $BASEDIR/$BUNDLE_NAME/data_raw
mkdir -p $BASEDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/

echo hk 
mkdir -p $BASEDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/hk
find $BASEDIR/$SRC_BUNDLE/data_raw -name "GRD-L1A-${START}-${END}_${CREATION}-RDG*" -exec cp '{}' $BASEDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/hk \;
find $BASEDIR/$SRC_BUNDLE/data_raw -name "GRD-L1A-${START}-${END}_${CREATION}-SCI-SCL*" -exec cp '{}' $BASEDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/hk \;
find $BASEDIR/$SRC_BUNDLE/data_raw -name "GRD-L1A-${START}-${END}_${CREATION}-SOH-SCL*" -exec cp '{}' $BASEDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/hk \;
find $BASEDIR/$SRC_BUNDLE/data_raw -name "GRD-L1A-${START}-${END}_${CREATION}-STA*" -exec cp '{}' $BASEDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/hk \;

echo gamma 
mkdir -p $BASEDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/gamma
find $BASEDIR/$SRC_BUNDLE/data_raw -name "GRD-L1A-${START}-${END}_${CREATION}-BGO.*" -exec cp '{}' $BASEDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/gamma \;
find $BASEDIR/$SRC_BUNDLE/data_raw -name "GRD-L1A-${START}-${END}_${CREATION}-EMG*" -exec cp '{}' $BASEDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/gamma \;

echo neutron
mkdir -p $BASEDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/neutron
find $BASEDIR/$SRC_BUNDLE/data_raw -name "GRD-L1A-${START}-${END}_${CREATION}-BGO2*" -exec cp '{}' $BASEDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/neutron \;
find $BASEDIR/$SRC_BUNDLE/data_raw -name "GRD-L1A-${START}-${END}_${CREATION}-BLP2*" -exec cp '{}' $BASEDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/neutron \;
find $BASEDIR/$SRC_BUNDLE/data_raw -name "GRD-L1A-${START}-${END}_${CREATION}-EMN*" -exec cp '{}' $BASEDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/neutron \;
find $BASEDIR/$SRC_BUNDLE/data_raw -name "GRD-L1A-${START}-${END}_${CREATION}-PHOS*" -exec cp '{}' $BASEDIR/$BUNDLE_NAME/data_raw/${DATEPHASE}/GRD-L1A-${START}-${END}_${CREATION}/neutron \;
