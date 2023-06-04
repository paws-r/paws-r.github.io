<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_purchase_reserved_nodes_offering</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows you to purchase a reserved node offering

### Description

Allows you to purchase a reserved node offering. Reserved nodes are not
eligible for cancellation and are non-refundable.

### Usage

    memorydb_purchase_reserved_nodes_offering(ReservedNodesOfferingId,
      ReservationId, NodeCount, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_purchase_reserved_nodes_offering_:_ReservedNodesOfferingId">ReservedNodesOfferingId</code></td>
<td><p>[required] The ID of the reserved node offering to
purchase.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_purchase_reserved_nodes_offering_:_ReservationId">ReservationId</code></td>
<td><p>A customer-specified identifier to track this
reservation.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_purchase_reserved_nodes_offering_:_NodeCount">NodeCount</code></td>
<td><p>The number of node instances to reserve.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_purchase_reserved_nodes_offering_:_Tags">Tags</code></td>
<td><p>A list of tags to be added to this resource. A tag is a key-value
pair. A tag key must be accompanied by a tag value, although null is
accepted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReservedNode = list(
        ReservationId = "string",
        ReservedNodesOfferingId = "string",
        NodeType = "string",
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        Duration = 123,
        FixedPrice = 123.0,
        NodeCount = 123,
        OfferingType = "string",
        State = "string",
        RecurringCharges = list(
          list(
            RecurringChargeAmount = 123.0,
            RecurringChargeFrequency = "string"
          )
        ),
        ARN = "string"
      )
    )

### Request syntax

    svc$purchase_reserved_nodes_offering(
      ReservedNodesOfferingId = "string",
      ReservationId = "string",
      NodeCount = 123,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
