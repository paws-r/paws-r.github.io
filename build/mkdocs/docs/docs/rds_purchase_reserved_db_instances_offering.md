<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_purchase_reserved_db_instances_offering</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Purchases a reserved DB instance offering

### Description

Purchases a reserved DB instance offering.

### Usage

    rds_purchase_reserved_db_instances_offering(
      ReservedDBInstancesOfferingId, ReservedDBInstanceId, DBInstanceCount,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_purchase_reserved_db_instances_offering_:_ReservedDBInstancesOfferingId">ReservedDBInstancesOfferingId</code></td>
<td><p>[required] The ID of the Reserved DB instance offering to
purchase.</p>
<p>Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706</p></td>
</tr>
<tr class="even">
<td><code
id="rds_purchase_reserved_db_instances_offering_:_ReservedDBInstanceId">ReservedDBInstanceId</code></td>
<td><p>Customer-specified identifier to track this reservation.</p>
<p>Example: myreservationID</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_purchase_reserved_db_instances_offering_:_DBInstanceCount">DBInstanceCount</code></td>
<td><p>The number of instances to reserve.</p>
<p>Default: <code>1</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_purchase_reserved_db_instances_offering_:_Tags">Tags</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReservedDBInstance = list(
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

### Request syntax

    svc$purchase_reserved_db_instances_offering(
      ReservedDBInstancesOfferingId = "string",
      ReservedDBInstanceId = "string",
      DBInstanceCount = 123,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
