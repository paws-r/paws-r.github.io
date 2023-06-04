<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_delete_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a resource policy from the target Amazon Web Services account

### Description

Deletes a resource policy from the target Amazon Web Services account.

### Usage

    xray_delete_resource_policy(PolicyName, PolicyRevisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="xray_delete_resource_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name of the resource policy to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="xray_delete_resource_policy_:_PolicyRevisionId">PolicyRevisionId</code></td>
<td><p>Specifies a specific policy revision to delete. Provide a
<code>PolicyRevisionId</code> to ensure an atomic delete operation. If
the provided revision id does not match the latest policy revision id,
an <code>InvalidPolicyRevisionIdException</code> exception is
returned.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_policy(
      PolicyName = "string",
      PolicyRevisionId = "string"
    )
