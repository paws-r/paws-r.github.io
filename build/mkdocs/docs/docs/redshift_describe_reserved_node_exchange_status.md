<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_reserved_node_exchange_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns exchange status details and associated metadata for a reserved-node exchange

### Description

Returns exchange status details and associated metadata for a
reserved-node exchange. Statuses include such values as in progress and
requested.

### Usage

    redshift_describe_reserved_node_exchange_status(ReservedNodeId,
      ReservedNodeExchangeRequestId, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_reserved_node_exchange_status_:_ReservedNodeId">ReservedNodeId</code></td>
<td><p>The identifier of the source reserved node in a reserved-node
exchange request.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_reserved_node_exchange_status_:_ReservedNodeExchangeRequestId">ReservedNodeExchangeRequestId</code></td>
<td><p>The identifier of the reserved-node exchange request.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_reserved_node_exchange_status_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of response records to return in each call. If
the number of remaining response records exceeds the specified
<code>MaxRecords</code> value, a value is returned in a
<code>Marker</code> field of the response. You can retrieve the next set
of records by retrying the command with the returned marker
value.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_reserved_node_exchange_status_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_reserved_node_exchange_status</code> request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by the <code>MaxRecords</code>
parameter. You can retrieve the next set of response records by
providing the returned marker value in the <code>Marker</code> parameter
and retrying the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReservedNodeExchangeStatusDetails = list(
        list(
          ReservedNodeExchangeRequestId = "string",
          Status = "REQUESTED"|"PENDING"|"IN_PROGRESS"|"RETRYING"|"SUCCEEDED"|"FAILED",
          RequestTime = as.POSIXct(
            "2015-01-01"
          ),
          SourceReservedNodeId = "string",
          SourceReservedNodeType = "string",
          SourceReservedNodeCount = 123,
          TargetReservedNodeOfferingId = "string",
          TargetReservedNodeType = "string",
          TargetReservedNodeCount = 123
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_reserved_node_exchange_status(
      ReservedNodeId = "string",
      ReservedNodeExchangeRequestId = "string",
      MaxRecords = 123,
      Marker = "string"
    )
