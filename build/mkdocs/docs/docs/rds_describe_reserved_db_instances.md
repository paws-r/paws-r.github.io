<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_reserved_db_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about reserved DB instances for this account, or about a specified reserved DB instance

### Description

Returns information about reserved DB instances for this account, or
about a specified reserved DB instance.

### Usage

    rds_describe_reserved_db_instances(ReservedDBInstanceId,
      ReservedDBInstancesOfferingId, DBInstanceClass, Duration,
      ProductDescription, OfferingType, MultiAZ, LeaseId, Filters, MaxRecords,
      Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_reserved_db_instances_:_ReservedDBInstanceId">ReservedDBInstanceId</code></td>
<td><p>The reserved DB instance identifier filter value. Specify this
parameter to show only the reservation that matches the specified
reservation ID.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_reserved_db_instances_:_ReservedDBInstancesOfferingId">ReservedDBInstancesOfferingId</code></td>
<td><p>The offering identifier filter value. Specify this parameter to
show only purchased reservations matching the specified offering
identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_reserved_db_instances_:_DBInstanceClass">DBInstanceClass</code></td>
<td><p>The DB instance class filter value. Specify this parameter to
show only those reservations matching the specified DB instances
class.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_reserved_db_instances_:_Duration">Duration</code></td>
<td><p>The duration filter value, specified in years or seconds. Specify
this parameter to show only reservations for this duration.</p>
<p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_reserved_db_instances_:_ProductDescription">ProductDescription</code></td>
<td><p>The product description filter value. Specify this parameter to
show only those reservations matching the specified product
description.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_reserved_db_instances_:_OfferingType">OfferingType</code></td>
<td><p>The offering type filter value. Specify this parameter to show
only the available offerings matching the specified offering type.</p>
<p>Valid Values:
<code>"Partial Upfront" | "All Upfront" | "No Upfront" </code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_reserved_db_instances_:_MultiAZ">MultiAZ</code></td>
<td><p>A value that indicates whether to show only those reservations
that support Multi-AZ.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_reserved_db_instances_:_LeaseId">LeaseId</code></td>
<td><p>The lease identifier filter value. Specify this parameter to show
only the reservation that matches the specified lease ID.</p>
<p>Amazon Web Services Support might request the lease ID for an issue
related to a reserved DB instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_reserved_db_instances_:_Filters">Filters</code></td>
<td><p>This parameter isn't currently supported.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_reserved_db_instances_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
than the <code>MaxRecords</code> value is available, a pagination token
called a marker is included in the response so you can retrieve the
remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_reserved_db_instances_:_Marker">Marker</code></td>
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
      ReservedDBInstances = list(
        list(
          ReservedDBInstanceId = "string",
          ReservedDBInstancesOfferingId = "string",
          DBInstanceClass = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          Duration = 123,
          FixedPrice = 123.0,
          UsagePrice = 123.0,
          CurrencyCode = "string",
          DBInstanceCount = 123,
          ProductDescription = "string",
          OfferingType = "string",
          MultiAZ = TRUE|FALSE,
          State = "string",
          RecurringCharges = list(
            list(
              RecurringChargeAmount = 123.0,
              RecurringChargeFrequency = "string"
            )
          ),
          ReservedDBInstanceArn = "string",
          LeaseId = "string"
        )
      )
    )

### Request syntax

    svc$describe_reserved_db_instances(
      ReservedDBInstanceId = "string",
      ReservedDBInstancesOfferingId = "string",
      DBInstanceClass = "string",
      Duration = "string",
      ProductDescription = "string",
      OfferingType = "string",
      MultiAZ = TRUE|FALSE,
      LeaseId = "string",
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
