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
  * The state table is defined using an `Internal_Reference` with a type of `nucspec_product_to_state_table`.
  * The index of the state table that matches the records is defined in `State_Table_Entry`
  * If a range of records does not match a record in the state table, this index will be `nil`, and an explanation will be given in the comment.
  * States can be matched up by record range or by time range.

#### Observing Conditions

* Allows the specification of special conditions, either internal or external, that might affect observing. Some conditions may also be particularly interesting to the data user.
* Observing condition types may have multiple time ranges.
* Multiple types of observing conditions may be specified.

### Examples

#### Energy Calibration Example

#### State Table Examples

```xml
      <nucspec:State_Table>
        <Internal_Reference>
          <lid_reference>urn:nasa:pds:dawn_grand:data:state_table</lid_reference>
          <reference_type>nucspec_product_to_state_table</reference_type>
        </Internal_Reference>
        <Local_Internal_Reference>
          <local_identifier_reference>table</local_identifier_reference>
          <local_reference_type>state_table_to_data_table</local_reference_type>
        </Local_Internal_Reference>
        <nucspec:State_Table_Entry>
          <nucspec:state_index xsi:nil="true" nilReason="missing"></nucspec:state_index>
          <nucspec:comment>This state not defined in state table. Refer to GRD-L1A-071016-071017_110225-STA.xml</nucspec:comment>
          <nucspec:State_Time>
            <nucspec:state_time_field_name>SCLK</nucspec:state_time_field_name>
            <nucspec:Time_Range_SCLK>
              <nucspec:sclk_start_time>245828267</nucspec:sclk_start_time>
              <nucspec:sclk_stop_time>245843489</nucspec:sclk_stop_time>
            </nucspec:Time_Range_SCLK>
          </nucspec:State_Time>
        </nucspec:State_Table_Entry>
        <nucspec:State_Table_Entry>
          <nucspec:state_index>1</nucspec:state_index>
          <nucspec:State_Time>
            <nucspec:state_time_field_name>SCLK</nucspec:state_time_field_name>
            <nucspec:Time_Range_SCLK>
              <nucspec:sclk_start_time>245843559</nucspec:sclk_start_time>
              <nucspec:sclk_stop_time>245853779</nucspec:sclk_stop_time>
            </nucspec:Time_Range_SCLK>
          </nucspec:State_Time>
        </nucspec:State_Table_Entry>
      </nucspec:State_Table>
    </nucspec:Instrument_Settings>
```

In this example:
* The state table is a product with a lid of `urn:nasa:pds:dawn_grand:data:state_table`.
* The records with an SCLK of 245828267-245843489 do not have a corresponding state table entry. 
* The records with an SCLK of 245843559-245853779 correspond to the first entry in the state table.

#### Observing Condition Examples

## DAWN Dictionary

### About the DAWN dictionary

* Maintained by the DAWN mission team.
* Contains metadata relevant to each instrument on DAWN.
* In the case of GRaND, contains accumulation intervals (TELREADOUT) and state-of-health intervals (TELSOH), associated with each record.
* For an explanation of TELREADOUT and TELSOH, see (x)

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

```xml
<dawn:TELREADOUT_List>
  <dawn:TELREADOUT>
    <dawn:grand_start_sclk>245828267</dawn:grand_start_sclk>
    <dawn:grand_stop_sclk>245843489</dawn:grand_stop_sclk>
    <dawn:grand_interval unit="s" xsi:nil="true" nilReason="missing"></dawn:grand_interval>
    <dawn:comment>This state not defined in state table. Refer to GRD-L1A-071016-071017_110225-STA.xml</dawn:comment>
  </dawn:TELREADOUT>
  <dawn:TELREADOUT>
    <dawn:grand_start_sclk>245843559</dawn:grand_start_sclk>
    <dawn:grand_stop_sclk>245853779</dawn:grand_stop_sclk>
    <dawn:grand_interval unit="s">70</dawn:grand_interval>
  </dawn:TELREADOUT>
</dawn:TELREADOUT_List>
```

In this examle:
* The records with an SCLK of 245828267-245843489 do not have a scaler accumulation interval.
* The records with an SCLK of 245843559-245853779 have a scaler accumulation interval of 70 seconds.

#### TELSOH Example

```xml
<dawn:TELSOH_List>
  <dawn:TELSOH>
    <dawn:grand_start_sclk>245828267</dawn:grand_start_sclk>
    <dawn:grand_stop_sclk>245843489</dawn:grand_stop_sclk>
    <dawn:grand_interval unit="s" xsi:nil="true" nilReason="missing"></dawn:grand_interval>
    <dawn:comment>This state not defined in state table. Refer to GRD-L1A-071016-071017_110225-STA.xml</dawn:comment>
  </dawn:TELSOH>
  <dawn:TELSOH>
    <dawn:grand_start_sclk>245843559</dawn:grand_start_sclk>
    <dawn:grand_stop_sclk>245853779</dawn:grand_stop_sclk>
    <dawn:grand_interval unit="s">10</dawn:grand_interval>
  </dawn:TELSOH>
</dawn:TELSOH_List>
```

* The records with an SCLK of 245828267-245843489 do not have a state-of-health accumulation interval.
* The records with an SCLK of 245843559-245853779 have a state-of-health accumulation interval of 10 seconds.
