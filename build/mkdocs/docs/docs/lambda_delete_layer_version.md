<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_delete_layer_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a version of an Lambda layer

### Description

Deletes a version of an [Lambda
layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
Deleted versions can no longer be viewed or added to functions. To avoid
breaking functions, a copy of the version remains in Lambda until no
functions refer to it.

### Usage

    lambda_delete_layer_version(LayerName, VersionNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_delete_layer_version_:_LayerName">LayerName</code></td>
<td><p>[required] The name or Amazon Resource Name (ARN) of the
layer.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_delete_layer_version_:_VersionNumber">VersionNumber</code></td>
<td><p>[required] The version number.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_layer_version(
      LayerName = "string",
      VersionNumber = 123
    )
