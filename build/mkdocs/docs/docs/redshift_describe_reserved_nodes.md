<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_reserved_nodes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the descriptions of the reserved nodes

### Description

Returns the descriptions of the reserved nodes.

### Usage

    redshift_describe_reserved_nodes(ReservedNodeId, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_reserved_nodes_:_ReservedNodeId">ReservedNodeId</code></td>
<td><p>Identifier for the node reservation.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_reserved_nodes_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of response records to return in each call. If
the number of remaining response records exceeds the specified
<code>MaxRecords</code> value, a value is returned in a
<code>marker</code> field of the response. You can retrieve the next set
of records by retrying the command with the returned marker value.</p>
<p>Default: <code>100</code></p>
<p>Constraints: minimum 20, maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_reserved_nodes_:_Marker">Marker</code></td>
<td><p>An optional parameter that specifies the starting point to return
a set of response records. When the results of a
<code>describe_reserved_nodes</code> request exceed the value specified
in <code>MaxRecords</code>, Amazon Web Services returns a value in the
<code>Marker</code> field of the response. You can retrieve the next set
of response records by providing the returned marker value in the
<code>Marker</code> parameter and retrying the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      ReservedNodes = list(
        list(
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
    )

### Request syntax

    svc$describe_reserved_nodes(
      ReservedNodeId = "string",
      MaxRecords = 123,
      Marker = "string"
    )
