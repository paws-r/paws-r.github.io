<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_get_reserved_node_exchange_offerings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of DC2 ReservedNodeOfferings that matches the payment type, term, and usage price of the given DC1 reserved node

### Description

Returns an array of DC2 ReservedNodeOfferings that matches the payment
type, term, and usage price of the given DC1 reserved node.

### Usage

    redshift_get_reserved_node_exchange_offerings(ReservedNodeId,
      MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_get_reserved_node_exchange_offerings_:_ReservedNodeId">ReservedNodeId</code></td>
<td><p>[required] A string representing the node identifier for the DC1
Reserved Node to be exchanged.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_get_reserved_node_exchange_offerings_:_MaxRecords">MaxRecords</code></td>
<td><p>An integer setting the maximum number of ReservedNodeOfferings to
retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_get_reserved_node_exchange_offerings_:_Marker">Marker</code></td>
<td><p>A value that indicates the starting point for the next set of
ReservedNodeOfferings.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      ReservedNodeOfferings = list(
        list(
          ReservedNodeOfferingId = "string",
          NodeType = "string",
          Duration = 123,
          FixedPrice = 123.0,
          UsagePrice = 123.0,
          CurrencyCode = "string",
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
    )

### Request syntax

    svc$get_reserved_node_exchange_offerings(
      ReservedNodeId = "string",
      MaxRecords = 123,
      Marker = "string"
    )
