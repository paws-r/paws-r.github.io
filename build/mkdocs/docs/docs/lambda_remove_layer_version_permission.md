<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_remove_layer_version_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a statement from the permissions policy for a version of an Lambda layer

### Description

Removes a statement from the permissions policy for a version of an
[Lambda
layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
For more information, see `add_layer_version_permission`.

### Usage

    lambda_remove_layer_version_permission(LayerName, VersionNumber,
      StatementId, RevisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_remove_layer_version_permission_:_LayerName">LayerName</code></td>
<td><p>[required] The name or Amazon Resource Name (ARN) of the
layer.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_remove_layer_version_permission_:_VersionNumber">VersionNumber</code></td>
<td><p>[required] The version number.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_remove_layer_version_permission_:_StatementId">StatementId</code></td>
<td><p>[required] The identifier that was specified when the statement
was added.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_remove_layer_version_permission_:_RevisionId">RevisionId</code></td>
<td><p>Only update the policy if the revision ID matches the ID
specified. Use this option to avoid modifying a policy that has changed
since you last read it.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_layer_version_permission(
      LayerName = "string",
      VersionNumber = 123,
      StatementId = "string",
      RevisionId = "string"
    )
