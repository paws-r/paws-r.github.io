<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_core_network_change_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a core network change event

### Description

Returns information about a core network change event.

### Usage

    networkmanager_get_core_network_change_events(CoreNetworkId,
      PolicyVersionId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_get_core_network_change_events_:_CoreNetworkId">CoreNetworkId</code></td>
<td><p>[required] The ID of a core network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_core_network_change_events_:_PolicyVersionId">PolicyVersionId</code></td>
<td><p>[required] The ID of the policy version.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_core_network_change_events_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_core_network_change_events_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CoreNetworkChangeEvents = list(
        list(
          Type = "CORE_NETWORK_SEGMENT"|"CORE_NETWORK_EDGE"|"ATTACHMENT_MAPPING"|"ATTACHMENT_ROUTE_PROPAGATION"|"ATTACHMENT_ROUTE_STATIC"|"CORE_NETWORK_CONFIGURATION"|"SEGMENTS_CONFIGURATION"|"SEGMENT_ACTIONS_CONFIGURATION"|"ATTACHMENT_POLICIES_CONFIGURATION",
          Action = "ADD"|"MODIFY"|"REMOVE",
          IdentifierPath = "string",
          EventTime = as.POSIXct(
            "2015-01-01"
          ),
          Status = "NOT_STARTED"|"IN_PROGRESS"|"COMPLETE"|"FAILED",
          Values = list(
            EdgeLocation = "string",
            SegmentName = "string",
            AttachmentId = "string",
            Cidr = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_core_network_change_events(
      CoreNetworkId = "string",
      PolicyVersionId = 123,
      MaxResults = 123,
      NextToken = "string"
    )
