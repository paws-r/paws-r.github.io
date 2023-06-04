<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_describe_reserved_nodes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about reserved nodes for this account, or about a specified reserved node

### Description

Returns information about reserved nodes for this account, or about a
specified reserved node.

### Usage

    memorydb_describe_reserved_nodes(ReservationId, ReservedNodesOfferingId,
      NodeType, Duration, OfferingType, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_describe_reserved_nodes_:_ReservationId">ReservationId</code></td>
<td><p>The reserved node identifier filter value. Use this parameter to
show only the reservation that matches the specified reservation
ID.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_reserved_nodes_:_ReservedNodesOfferingId">ReservedNodesOfferingId</code></td>
<td><p>The offering identifier filter value. Use this parameter to show
only purchased reservations matching the specified offering
identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_describe_reserved_nodes_:_NodeType">NodeType</code></td>
<td><p>The node type filter value. Use this parameter to show only those
reservations matching the specified node type. For more information, see
<a
href="https://docs.aws.amazon.com/memorydb/latest/devguide/#reserved-nodes-supported">Supported
node types</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_reserved_nodes_:_Duration">Duration</code></td>
<td><p>The duration filter value, specified in years or seconds. Use
this parameter to show only reservations for this duration.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_describe_reserved_nodes_:_OfferingType">OfferingType</code></td>
<td><p>The offering type filter value. Use this parameter to show only
the available offerings matching the specified offering type. Valid
values: "All Upfront"|"Partial Upfront"| "No Upfront"</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_reserved_nodes_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified MaxRecords value, a marker is included
in the response so that the remaining results can be retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_describe_reserved_nodes_:_NextToken">NextToken</code></td>
<td><p>An optional marker returned from a prior request. Use this marker
for pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by MaxRecords.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      ReservedNodes = list(
        list(
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
    )

### Request syntax

    svc$describe_reserved_nodes(
      ReservationId = "string",
      ReservedNodesOfferingId = "string",
      NodeType = "string",
      Duration = "string",
      OfferingType = "string",
      MaxResults = 123,
      NextToken = "string"
    )
