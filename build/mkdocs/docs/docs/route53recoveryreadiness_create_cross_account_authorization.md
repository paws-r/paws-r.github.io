<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_create_cross_account_authorization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a cross-account readiness authorization

### Description

Creates a cross-account readiness authorization. This lets you authorize
another account to work with Route 53 Application Recovery Controller,
for example, to check the readiness status of resources in a separate
account.

### Usage

    route53recoveryreadiness_create_cross_account_authorization(
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
id="route53recoveryreadiness_create_cross_account_authorization_:_CrossAccountAuthorization">CrossAccountAuthorization</code></td>
<td><p>[required] The cross-account authorization.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CrossAccountAuthorization = "string"
    )

### Request syntax

    svc$create_cross_account_authorization(
      CrossAccountAuthorization = "string"
    )
