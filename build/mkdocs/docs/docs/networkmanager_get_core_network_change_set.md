<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_core_network_change_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a change set between the LIVE core network policy and a submitted policy

### Description

Returns a change set between the LIVE core network policy and a
submitted policy.

### Usage

    networkmanager_get_core_network_change_set(CoreNetworkId,
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
id="networkmanager_get_core_network_change_set_:_CoreNetworkId">CoreNetworkId</code></td>
<td><p>[required] The ID of a core network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_core_network_change_set_:_PolicyVersionId">PolicyVersionId</code></td>
<td><p>[required] The ID of the policy version.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_core_network_change_set_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_core_network_change_set_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CoreNetworkChanges = list(
        list(
          Type = "CORE_NETWORK_SEGMENT"|"CORE_NETWORK_EDGE"|"ATTACHMENT_MAPPING"|"ATTACHMENT_ROUTE_PROPAGATION"|"ATTACHMENT_ROUTE_STATIC"|"CORE_NETWORK_CONFIGURATION"|"SEGMENTS_CONFIGURATION"|"SEGMENT_ACTIONS_CONFIGURATION"|"ATTACHMENT_POLICIES_CONFIGURATION",
          Action = "ADD"|"MODIFY"|"REMOVE",
          Identifier = "string",
          PreviousValues = list(
            SegmentName = "string",
            EdgeLocations = list(
              "string"
            ),
            Asn = 123,
            Cidr = "string",
            DestinationIdentifier = "string",
            InsideCidrBlocks = list(
              "string"
            ),
            SharedSegments = list(
              "string"
            )
          ),
          NewValues = list(
            SegmentName = "string",
            EdgeLocations = list(
              "string"
            ),
            Asn = 123,
            Cidr = "string",
            DestinationIdentifier = "string",
            InsideCidrBlocks = list(
              "string"
            ),
            SharedSegments = list(
              "string"
            )
          ),
          IdentifierPath = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_core_network_change_set(
      CoreNetworkId = "string",
      PolicyVersionId = 123,
      MaxResults = 123,
      NextToken = "string"
    )
