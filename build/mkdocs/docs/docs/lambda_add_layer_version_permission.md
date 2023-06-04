<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_add_layer_version_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds permissions to the resource-based policy of a version of an Lambda layer

### Description

Adds permissions to the resource-based policy of a version of an [Lambda
layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
Use this action to grant layer usage permission to other accounts. You
can grant permission to a single account, all accounts in an
organization, or all Amazon Web Services accounts.

To revoke permission, call `remove_layer_version_permission` with the
statement ID that you specified when you added it.

### Usage

    lambda_add_layer_version_permission(LayerName, VersionNumber,
      StatementId, Action, Principal, OrganizationId, RevisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_add_layer_version_permission_:_LayerName">LayerName</code></td>
<td><p>[required] The name or Amazon Resource Name (ARN) of the
layer.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_add_layer_version_permission_:_VersionNumber">VersionNumber</code></td>
<td><p>[required] The version number.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_add_layer_version_permission_:_StatementId">StatementId</code></td>
<td><p>[required] An identifier that distinguishes the policy from
others on the same layer version.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_add_layer_version_permission_:_Action">Action</code></td>
<td><p>[required] The API action that grants access to the layer. For
example, <code>lambda:GetLayerVersion</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_add_layer_version_permission_:_Principal">Principal</code></td>
<td><p>[required] An account ID, or <code>*</code> to grant layer usage
permission to all accounts in an organization, or all Amazon Web
Services accounts (if <code>organizationId</code> is not specified). For
the last case, make sure that you really do want all Amazon Web Services
accounts to have usage permission to this layer.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_add_layer_version_permission_:_OrganizationId">OrganizationId</code></td>
<td><p>With the principal set to <code>*</code>, grant permission to all
accounts in the specified organization.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_add_layer_version_permission_:_RevisionId">RevisionId</code></td>
<td><p>Only update the policy if the revision ID matches the ID
specified. Use this option to avoid modifying a policy that has changed
since you last read it.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Statement = "string",
      RevisionId = "string"
    )

### Request syntax

    svc$add_layer_version_permission(
      LayerName = "string",
      VersionNumber = 123,
      StatementId = "string",
      Action = "string",
      Principal = "string",
      OrganizationId = "string",
      RevisionId = "string"
    )
