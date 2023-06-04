<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_get_layer_version_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the permission policy for a version of an Lambda layer

### Description

Returns the permission policy for a version of an [Lambda
layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
For more information, see `add_layer_version_permission`.

### Usage

    lambda_get_layer_version_policy(LayerName, VersionNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_get_layer_version_policy_:_LayerName">LayerName</code></td>
<td><p>[required] The name or Amazon Resource Name (ARN) of the
layer.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_get_layer_version_policy_:_VersionNumber">VersionNumber</code></td>
<td><p>[required] The version number.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = "string",
      RevisionId = "string"
    )

### Request syntax

    svc$get_layer_version_policy(
      LayerName = "string",
      VersionNumber = 123
    )
