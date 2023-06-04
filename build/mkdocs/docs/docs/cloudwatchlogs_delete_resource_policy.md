<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_delete_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a resource policy from this account

### Description

Deletes a resource policy from this account. This revokes the access of
the identities in that policy to put log events to this account.

### Usage

    cloudwatchlogs_delete_resource_policy(policyName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_delete_resource_policy_:_policyName">policyName</code></td>
<td><p>The name of the policy to be revoked. This parameter is
required.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_policy(
      policyName = "string"
    )
