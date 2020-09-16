# GRaND Data Dictionaries

## Nucspec dictionary

### About the Nucspec dictionary

* Designed to support nuclear spectroscopy observations.
* Joint effort by SBN and the GRaND team and reviewed by other nuclear spectroscopy specialists.
* Refer to the Nucspec Dictionary user guide for more information on how to use this dictionary.

### How is Nucspec used within GRaND

#### Energy Calibration

* Allows the specification of a polynomial expression that converts a pulse height to an energy level.

#### State Tables

* Allows records within a product to be matched up to an instrument state, contained in a separate table.
  * States can be matched up by record range or by time range.

#### Observing Conditions

* Allows the specification of special conditions, either internal or external, that might affect observing. Some conditions may also be particularly interesting to the data user.
* Observing condition types may have multiple time ranges.
* Multiple types of observing conditions may be specified.

### Examples

#### Energy Calibration Example

#### State Table Examples

#### Observing Condition Examples

## DAWN Dictionary

### About the DAWN dictionary

* Maintained by the DAWN mission team.
* Contains metadata relevant to each instrument on DAWN.
* In the case of GRaND, contains accumulation intervals (TELREADOUT) and state-of-health intervals (TELSOH), associated with each record.

### How is the DAWN dictionary used within GRaND

#### Tel_Readout

* TELREADOUT is the accumulation interval.
* May be associated with individual records within a product.
* Multiple TELREADOUTs may be specified.

#### Tel_SOH

* TELSOH is the state-of-health interval.
* May be associated with individual records within a product.
* Multiple TELSOHs may be specified.

### Examples

#### TELREADOUT Example

#### TELSOH Example