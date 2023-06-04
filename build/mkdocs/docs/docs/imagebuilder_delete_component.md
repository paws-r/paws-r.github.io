<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_delete_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a component build version

### Description

Deletes a component build version.

### Usage

    imagebuilder_delete_component(componentBuildVersionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_delete_component_:_componentBuildVersionArn">componentBuildVersionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the component build
version to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      componentBuildVersionArn = "string"
    )

### Request syntax

    svc$delete_component(
      componentBuildVersionArn = "string"
    )
