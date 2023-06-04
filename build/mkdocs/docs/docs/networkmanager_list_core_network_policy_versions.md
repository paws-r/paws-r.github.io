<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_list_core_network_policy_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of core network policy versions

### Description

Returns a list of core network policy versions.

### Usage

    networkmanager_list_core_network_policy_versions(CoreNetworkId,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_list_core_network_policy_versions_:_CoreNetworkId">CoreNetworkId</code></td>
<td><p>[required] The ID of a core network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_list_core_network_policy_versions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_list_core_network_policy_versions_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CoreNetworkPolicyVersions = list(
        list(
          CoreNetworkId = "string",
          PolicyVersionId = 123,
          Alias = "LIVE"|"LATEST",
          Description = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          ChangeSetState = "PENDING_GENERATION"|"FAILED_GENERATION"|"READY_TO_EXECUTE"|"EXECUTING"|"EXECUTION_SUCCEEDED"|"OUT_OF_DATE"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_core_network_policy_versions(
      CoreNetworkId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
