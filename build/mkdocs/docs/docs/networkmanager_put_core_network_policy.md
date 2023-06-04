<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_put_core_network_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new, immutable version of a core network policy

### Description

Creates a new, immutable version of a core network policy. A subsequent
change set is created showing the differences between the LIVE policy
and the submitted policy.

### Usage

    networkmanager_put_core_network_policy(CoreNetworkId, PolicyDocument,
      Description, LatestVersionId, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_put_core_network_policy_:_CoreNetworkId">CoreNetworkId</code></td>
<td><p>[required] The ID of a core network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_put_core_network_policy_:_PolicyDocument">PolicyDocument</code></td>
<td><p>[required] The policy document.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_put_core_network_policy_:_Description">Description</code></td>
<td><p>a core network policy description.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_put_core_network_policy_:_LatestVersionId">LatestVersionId</code></td>
<td><p>The ID of a core network policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_put_core_network_policy_:_ClientToken">ClientToken</code></td>
<td><p>The client token associated with the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CoreNetworkPolicy = list(
        CoreNetworkId = "string",
        PolicyVersionId = 123,
        Alias = "LIVE"|"LATEST",
        Description = "string",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        ChangeSetState = "PENDING_GENERATION"|"FAILED_GENERATION"|"READY_TO_EXECUTE"|"EXECUTING"|"EXECUTION_SUCCEEDED"|"OUT_OF_DATE",
        PolicyErrors = list(
          list(
            ErrorCode = "string",
            Message = "string",
            Path = "string"
          )
        ),
        PolicyDocument = "string"
      )
    )

### Request syntax

    svc$put_core_network_policy(
      CoreNetworkId = "string",
      PolicyDocument = "string",
      Description = "string",
      LatestVersionId = 123,
      ClientToken = "string"
    )
