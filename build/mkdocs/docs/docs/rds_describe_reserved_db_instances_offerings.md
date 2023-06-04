<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_reserved_db_instances_offerings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists available reserved DB instance offerings

### Description

Lists available reserved DB instance offerings.

### Usage

    rds_describe_reserved_db_instances_offerings(
      ReservedDBInstancesOfferingId, DBInstanceClass, Duration,
      ProductDescription, OfferingType, MultiAZ, Filters, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_reserved_db_instances_offerings_:_ReservedDBInstancesOfferingId">ReservedDBInstancesOfferingId</code></td>
<td><p>The offering identifier filter value. Specify this parameter to
show only the available offering that matches the specified reservation
identifier.</p>
<p>Example: <code
style="white-space: pre;">⁠438012d3-4052-4cc7-b2e3-8d3372e0e706⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_reserved_db_instances_offerings_:_DBInstanceClass">DBInstanceClass</code></td>
<td><p>The DB instance class filter value. Specify this parameter to
show only the available offerings matching the specified DB instance
class.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_reserved_db_instances_offerings_:_Duration">Duration</code></td>
<td><p>Duration filter value, specified in years or seconds. Specify
this parameter to show only reservations for this duration.</p>
<p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_reserved_db_instances_offerings_:_ProductDescription">ProductDescription</code></td>
<td><p>Product description filter value. Specify this parameter to show
only the available offerings that contain the specified product
description.</p>
<p>The results show offerings that partially match the filter
value.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_reserved_db_instances_offerings_:_OfferingType">OfferingType</code></td>
<td><p>The offering type filter value. Specify this parameter to show
only the available offerings matching the specified offering type.</p>
<p>Valid Values:
<code>"Partial Upfront" | "All Upfront" | "No Upfront" </code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_reserved_db_instances_offerings_:_MultiAZ">MultiAZ</code></td>
<td><p>A value that indicates whether to show only those reservations
that support Multi-AZ.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_reserved_db_instances_offerings_:_Filters">Filters</code></td>
<td><p>This parameter isn't currently supported.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_reserved_db_instances_offerings_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
than the <code>MaxRecords</code> value is available, a pagination token
called a marker is included in the response so you can retrieve the
remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_reserved_db_instances_offerings_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by
<code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      ReservedDBInstancesOfferings = list(
        list(
          ReservedDBInstancesOfferingId = "string",
          DBInstanceClass = "string",
          Duration = 123,
          FixedPrice = 123.0,
          UsagePrice = 123.0,
          CurrencyCode = "string",
          ProductDescription = "string",
          OfferingType = "string",
          MultiAZ = TRUE|FALSE,
          RecurringCharges = list(
            list(
              RecurringChargeAmount = 123.0,
              RecurringChargeFrequency = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_reserved_db_instances_offerings(
      ReservedDBInstancesOfferingId = "string",
      DBInstanceClass = "string",
      Duration = "string",
      ProductDescription = "string",
      OfferingType = "string",
      MultiAZ = TRUE|FALSE,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxRecords = 123,
      Marker = "string"
    )
