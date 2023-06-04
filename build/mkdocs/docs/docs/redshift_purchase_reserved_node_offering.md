<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_purchase_reserved_node_offering</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows you to purchase reserved nodes

### Description

Allows you to purchase reserved nodes. Amazon Redshift offers a
predefined set of reserved node offerings. You can purchase one or more
of the offerings. You can call the `describe_reserved_node_offerings`
API to obtain the available reserved node offerings. You can call this
API by providing a specific reserved node offering and the number of
nodes you want to reserve.

For more information about reserved node offerings, go to [Purchasing
Reserved
Nodes](https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_purchase_reserved_node_offering(ReservedNodeOfferingId,
      NodeCount)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_purchase_reserved_node_offering_:_ReservedNodeOfferingId">ReservedNodeOfferingId</code></td>
<td><p>[required] The unique identifier of the reserved node offering
you want to purchase.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_purchase_reserved_node_offering_:_NodeCount">NodeCount</code></td>
<td><p>The number of reserved nodes that you want to purchase.</p>
<p>Default: <code>1</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReservedNode = list(
        ReservedNodeId = "string",
        ReservedNodeOfferingId = "string",
        NodeType = "string",
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        Duration = 123,
        FixedPrice = 123.0,
        UsagePrice = 123.0,
        CurrencyCode = "string",
        NodeCount = 123,
        State = "string",
        OfferingType = "string",
        RecurringCharges = list(
          list(
            RecurringChargeAmount = 123.0,
            RecurringChargeFrequency = "string"
          )
        ),
        ReservedNodeOfferingType = "Regular"|"Upgradable"
      )
    )

### Request syntax

    svc$purchase_reserved_node_offering(
      ReservedNodeOfferingId = "string",
      NodeCount = 123
    )
