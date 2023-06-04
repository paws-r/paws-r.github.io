<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_accept_reserved_node_exchange</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Exchanges a DC1 Reserved Node for a DC2 Reserved Node with no changes to the configuration (term, payment type, or number of nodes) and no additional costs

### Description

Exchanges a DC1 Reserved Node for a DC2 Reserved Node with no changes to
the configuration (term, payment type, or number of nodes) and no
additional costs.

### Usage

    redshift_accept_reserved_node_exchange(ReservedNodeId,
      TargetReservedNodeOfferingId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_accept_reserved_node_exchange_:_ReservedNodeId">ReservedNodeId</code></td>
<td><p>[required] A string representing the node identifier of the DC1
Reserved Node to be exchanged.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_accept_reserved_node_exchange_:_TargetReservedNodeOfferingId">TargetReservedNodeOfferingId</code></td>
<td><p>[required] The unique identifier of the DC2 Reserved Node
offering to be used for the exchange. You can obtain the value for the
parameter by calling
<code>get_reserved_node_exchange_offerings</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExchangedReservedNode = list(
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

    svc$accept_reserved_node_exchange(
      ReservedNodeId = "string",
      TargetReservedNodeOfferingId = "string"
    )
