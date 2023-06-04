<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_core_network_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details about a core network policy

### Description

Returns details about a core network policy. You can get details about
your current live policy or any previous policy version.

### Usage

    networkmanager_get_core_network_policy(CoreNetworkId, PolicyVersionId,
      Alias)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_get_core_network_policy_:_CoreNetworkId">CoreNetworkId</code></td>
<td><p>[required] The ID of a core network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_core_network_policy_:_PolicyVersionId">PolicyVersionId</code></td>
<td><p>The ID of a core network policy version.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_core_network_policy_:_Alias">Alias</code></td>
<td><p>The alias of a core network policy</p></td>
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

    svc$get_core_network_policy(
      CoreNetworkId = "string",
      PolicyVersionId = 123,
      Alias = "LIVE"|"LATEST"
    )
