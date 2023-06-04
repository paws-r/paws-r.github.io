<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_delete_cross_account_authorization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes cross account readiness authorization

### Description

Deletes cross account readiness authorization.

### Usage

    route53recoveryreadiness_delete_cross_account_authorization(
      CrossAccountAuthorization)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_delete_cross_account_authorization_:_CrossAccountAuthorization">CrossAccountAuthorization</code></td>
<td><p>[required] The cross-account authorization.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_cross_account_authorization(
      CrossAccountAuthorization = "string"
    )
