<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_delete_core_network_policy_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a policy version from a core network

### Description

Deletes a policy version from a core network. You can't delete the
current LIVE policy.

### Usage

    networkmanager_delete_core_network_policy_version(CoreNetworkId,
      PolicyVersionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_delete_core_network_policy_version_:_CoreNetworkId">CoreNetworkId</code></td>
<td><p>[required] The ID of a core network for the deleted
policy.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_delete_core_network_policy_version_:_PolicyVersionId">PolicyVersionId</code></td>
<td><p>[required] The version ID of the deleted policy.</p></td>
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

    svc$delete_core_network_policy_version(
      CoreNetworkId = "string",
      PolicyVersionId = 123
    )
