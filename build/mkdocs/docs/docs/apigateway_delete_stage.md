<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_stage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Stage resource

### Description

Deletes a Stage resource.

### Usage

    apigateway_delete_stage(restApiId, stageName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_delete_stage_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_delete_stage_:_stageName">stageName</code></td>
<td><p>[required] The name of the Stage resource to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_stage(
      restApiId = "string",
      stageName = "string"
    )
